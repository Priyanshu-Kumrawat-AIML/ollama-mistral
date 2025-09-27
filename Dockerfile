FROM ollama/ollama:latest

# Install curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Create startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port
EXPOSE 11434

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=300s --retries=3 \
    CMD curl -f http://localhost:11434/api/tags || exit 1

# Start
CMD ["/start.sh"]
