#!/bin/bash

# Start Ollama in background
ollama serve &

# Wait for Ollama to start
echo "Waiting for Ollama to start..."
sleep 15

# Pull Mistral model
echo "Pulling Mistral model (this may take 5-10 minutes)..."
ollama pull mistral:instruct

echo "Setup complete! Ollama is ready."

# Keep container running
wait
