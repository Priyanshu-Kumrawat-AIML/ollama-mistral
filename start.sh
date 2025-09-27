#!/bin/bash

ollama serve &

echo "Waiting for Ollama to start..."
sleep 10

echo "Pulling Mistral model..."
ollama pull mistral:instruct

echo "Mistral model ready!"

wait
