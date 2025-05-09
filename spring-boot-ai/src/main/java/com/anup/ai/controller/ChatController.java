package com.anup.ai.controller;

import com.anup.ai.config.AiChatService;
import com.anup.ai.service.RagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.http.codec.ServerSentEvent;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import reactor.core.publisher.Flux;

import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

@RestController
@RequestMapping("/chat")
@CrossOrigin(origins = "*")
public class ChatController {

    private static final Logger log = LoggerFactory.getLogger(ChatController.class);
    private final AiChatService chatService;
    private final RagService ragService;
    private final ConcurrentHashMap<String, Flux<String>> streamMap = new ConcurrentHashMap<>();

    public ChatController(AiChatService chatService, RagService ragService) {
        this.chatService = chatService;
        this.ragService = ragService;
    }

    @PostMapping("/load")
    public ResponseEntity<String> load(
            @RequestParam String message,
            @RequestParam(value = "file", required = false) MultipartFile file
    ) throws IOException {
        String processedMessage = message.trim().isEmpty() ?
                "What is the content of the document?" : message;

        Flux<String> flux = createFlux(processedMessage, file);
        String streamId = UUID.randomUUID().toString();
        streamMap.put(streamId, flux);
        return ResponseEntity.ok(streamId);
    }

    private Flux<String> processFile(String message, MultipartFile file) throws IOException {
        Resource resource = ragService.saveDocument(file);
        ragService.saveSegments(resource);
        return chatService.chat(message);
    }

    @GetMapping(value = "/stream/{streamId}", produces = "text/event-stream")
    public Flux<ServerSentEvent<String>> stream(@PathVariable String streamId) {
        return Optional.ofNullable(streamMap.remove(streamId))
                .map(flux -> flux.map(content ->
                        ServerSentEvent.builder(content)
                                .retry(Duration.ofSeconds(30))
                                .build()
                ))
                .orElse(Flux.just(
                        ServerSentEvent.<String>builder()
                                .event("error")
                                .data("Invalid stream ID")
                                .build()
                ));
    }

    private Flux<String> createFlux(String message, MultipartFile file) throws IOException {
        return (file == null || file.isEmpty() ?
                chatService.chat(message) :
                processFile(message, file))
                .bufferUntil(s -> s.endsWith("\n\n") || s.contains("</think>"))
                .map(list -> String.join("", list))
                .delayElements(Duration.ofMillis(50));
    }

    private ServerSentEvent<String> formatChunk(String chunk) {
        String formatted = chunk.replace("\n", "\ndata: ");
        return ServerSentEvent.<String>builder()
                .data(formatted)
                .retry(Duration.ofSeconds(30))
                .build();
    }
}