#!/bin/bash

# Setup script for ML_2026

echo "========================================="
echo "ML_2026 Setup Script"
echo "========================================="

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# Setup Ollama (optional)
read -p "Setup Ollama? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Visit https://ollama.ai to download and install Ollama"
    echo "Then run: ollama serve"
fi

echo "Setup complete!"
echo "Activate virtual environment: source venv/bin/activate"
