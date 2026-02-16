#!/bin/bash
# Download local LLM model for code synthesis

set -e

MODEL_DIR="./models"
MODEL_URL="https://huggingface.co/TheBloke/CodeLlama-7B-GGUF/resolve/main/codellama-7b.Q4_K_M.gguf"
MODEL_FILE="codellama-7b.Q4_K_M.gguf"

echo "Creating models directory..."
mkdir -p "$MODEL_DIR"

if [ -f "$MODEL_DIR/$MODEL_FILE" ]; then
    echo "Model already exists: $MODEL_FILE"
    exit 0
fi

echo "Downloading CodeLlama-7B (Q4_K_M quantization)..."
echo "This may take a while (~4GB download)"

# Try wget first, fallback to curl
if command -v wget &> /dev/null; then
    wget -O "$MODEL_DIR/$MODEL_FILE" "$MODEL_URL"
elif command -v curl &> /dev/null; then
    curl -L -o "$MODEL_DIR/$MODEL_FILE" "$MODEL_URL"
else
    echo "Error: Neither wget nor curl found. Please install one of them."
    exit 1
fi

echo "Model downloaded to: $MODEL_DIR/$MODEL_FILE"
echo ""
echo "To use the model, update config.yaml:"
echo "  model:"
echo "    path: \"$MODEL_DIR/$MODEL_FILE\""
