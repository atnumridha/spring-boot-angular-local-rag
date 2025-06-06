package com.anup.ai.config;

import dev.langchain4j.model.chat.ChatLanguageModel;
import dev.langchain4j.model.chat.StreamingChatLanguageModel;
import dev.langchain4j.model.embedding.EmbeddingModel;
import dev.langchain4j.model.ollama.OllamaChatModel;
import dev.langchain4j.model.ollama.OllamaEmbeddingModel;
import dev.langchain4j.model.ollama.OllamaStreamingChatModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.Duration;

@Configuration
public class OllamaConfig {
    private static final String BASE_URL = "http://localhost:11434";
    private static final String MODEL_NAME = "deepseek-r1:1.5b";
    private static final String EMBED_MODEL_NAME = "nomic-embed-text";

    @Bean
    public ChatLanguageModel chatLanguageModel() {
        // Creates standard chat model for:
        // - Regular question-answering
        // - Single response generation
        // - Zero temperature for consistent outputs
        return OllamaChatModel.builder()
                .baseUrl(BASE_URL)
                .temperature(0.0)  // Deterministic responses
                .modelName(MODEL_NAME)
                .timeout(Duration.ofMinutes(60))
                .build();
    }

    @Bean
    public StreamingChatLanguageModel streamingChatLanguageModel() {
        // Creates streaming model for:
        // - Real-time response generation
        // - Token-by-token output
        // - Better user experience with immediate feedback
        return OllamaStreamingChatModel.builder()
                .baseUrl(BASE_URL)
                .temperature(0.0)
                .modelName(MODEL_NAME)
                .timeout(Duration.ofMinutes(60))
                .build();
    }

    @Bean
    public EmbeddingModel embeddingModel() {
        // Creates embedding model for:
        // - Converting text to vectors
        // - Document indexing
        // - Similarity search
        return OllamaEmbeddingModel.builder()
                .baseUrl(BASE_URL)
                .timeout(Duration.ofMinutes(60))
                .modelName(EMBED_MODEL_NAME)
                .build();
    }

}