# Setup Guide - ML_2026

## Prerequisites

- Python 3.8+
- pip package manager
- Git

## Installation

### 1. Clone Repository
```bash
git clone https://github.com/TheAhmadSharif/ML_2026.git
cd ML_2026
```

### 2. Create Virtual Environment
```bash
python3 -m venv venv
source venv/bin/activate
```

On Windows:
```bash
python -m venv venv
venv\Scripts\activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Setup Ollama (for LLM projects)

Download from: https://ollama.ai

```bash
ollama serve          # Start Ollama server
ollama pull phi       # Download a model
```

In another terminal:
```bash
ollama run phi "Hello, what is 2+2?"
```

### 5. Verify Installation
```bash
python3 -c "import langchain, chromadb, torch; print('All packages installed!')"
```

## Project Structure

Each project folder contains:
- `main.py` or `*.ipynb` - Code
- `requirements.txt` - Project dependencies
- `README.md` - Instructions
- `data/` or `documents/` - Sample data

## Running Projects

### LLM Projects
```bash
cd 03_LLM/02_RAG/01_Simple_RAG
python3 simple_rag.py
```

### Jupyter Notebooks
```bash
jupyter notebook
```

## Troubleshooting

### ImportError
```bash
pip install -r requirements.txt --upgrade
```

### Ollama Connection Error
Make sure Ollama server is running:
```bash
ollama serve
```

### CUDA/GPU Issues
For CPU-only installation:
```bash
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
```

