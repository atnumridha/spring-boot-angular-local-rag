import { Component, NgZone, OnDestroy } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { SafeHtmlPipe } from '../../shared/pipes/safe-html.pipe';

@Component({
  selector: 'app-chat',
  standalone: true,
  imports: [CommonModule, FormsModule, SafeHtmlPipe],
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnDestroy {
  message = '';
  chatHistory: { sender: string; text: string }[] = [];
  selectedFile?: File;
  isStreaming = false;
  private eventSource?: EventSource;

  constructor(private http: HttpClient, private ngZone: NgZone) {}

  onFileSelected(event: any) {
    const file = event.target.files[0];
    if (file) {
      this.uploadFile(file);
    }
  }

  uploadFile(file: File) {
    const formData = new FormData();
    formData.append('message', ''); // Empty message triggers default processing
    formData.append('file', file);

    this.isStreaming = true;

    this.http.post('/chat/load', formData, { responseType: 'text' }).subscribe({
      next: (streamId) => {
        this.listenToStream(streamId);
        // Clear the file input after upload
        (document.querySelector('input[type="file"]') as HTMLInputElement).value = '';
      },
      error: () => {
        this.chatHistory.push({
          sender: 'AI',
          text: '<span class="text-red-500">[Error processing document]</span>'
        });
        this.isStreaming = false;
      }
    });
  }

  sendMessage() {
    const trimmed = this.message.trim();
    if (!trimmed) return;

    this.chatHistory.push({ sender: 'You', text: this.escapeHtml(trimmed) });
    this.isStreaming = true;
    this.message = '';

    const formData = new FormData();
    formData.append('message', trimmed);

    this.http.post('/chat/load', formData, { responseType: 'text' }).subscribe({
      next: (streamId) => this.listenToStream(streamId),
      error: () => {
        this.chatHistory.push({
          sender: 'AI',
          text: '<span class="text-red-500">[Error retrieving response]</span>'
        });
        this.isStreaming = false;
      }
    });
  }

  listenToStream(streamId: string) {
    const index = this.chatHistory.length;
    this.chatHistory.push({ sender: 'AI', text: '' });
    let buffer = '';

    this.eventSource = new EventSource(`/chat/stream/${streamId}`);

    this.eventSource.onmessage = ({ data }) => {
      this.ngZone.run(() => {
        if (data === 'end') {
          this.finalizeMessage(index);
          return;
        }

        buffer += data;

        if (buffer.includes('</think>')) {
          const [think, rest] = buffer.split('</think>');
          this.appendContent(index, think + '</think>');
          buffer = rest || '';
        }

        if (buffer) {
          this.appendContent(index, buffer);
          buffer = '';
        }
      });
    };

    this.eventSource.addEventListener('end', () => this.finalizeMessage(index));
    this.eventSource.onerror = () => this.finalizeMessage(index);
  }

  private appendContent(index: number, content: string) {
    this.chatHistory[index].text += content
      .replace(/\ndata: /g, '\n')
      .replace(/retry:\d+/g, '');
  }

  private finalizeMessage(index: number) {
    this.ngZone.run(() => {
      // Remove the regex that strips think blocks
      const raw = this.chatHistory[index].text
        .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');

      this.chatHistory[index].text = this.formatFinalMessage(raw);
      this.eventSource?.close();
      this.isStreaming = false;
    });
  }

  private formatFinalMessage(message: string): string {
    message = message.replace(/<think>([\s\S]*?)<\/think>/g, (match, thinkContent) => {
      const escapedContent = this.escapeHtml(thinkContent)
        .replace(/\n/g, '<br>')
        .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
        .replace(/`([^`]+?)`/g, '<code class="inline-code">$1</code>');

      return `
      <details class="ai-thinking-block">
        <summary class="think-summary">🤔 AI Thinking Process</summary>
        <div class="think-content">${escapedContent}</div>
      </details>`;
    });

    return message
      .replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>')
      .replace(/`([^`]+?)`/g, '<code class="inline-code">$1</code>')
      .replace(/\.([A-Za-z])/g, '. $1')
      .replace(/\n{2,}/g, '</p><p>')
      .replace(/retry:\d+/g, '')
      .replace(/data: /g, '')
      .replace(/#### /g, '')
      .replace(/### /g, '')
      .replace(/--- /g, '');
  }

  private escapeHtml(text: string): string {
    const map: { [key: string]: string } = {
      '&': '&amp;', '<': '&lt;', '>': '&gt;',
      '"': '&quot;', "'": '&#039;'
    };
    return text.replace(/[&<>"']/g, (m) => map[m]);
  }

  ngOnDestroy() {
    this.eventSource?.close();
  }
}
