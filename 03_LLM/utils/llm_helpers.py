"""Helper functions for LLM operations"""

def load_document(filepath):
    """Load a text document"""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            return f.read()
    except FileNotFoundError:
        print(f"Error: File {filepath} not found")
        return None

def chunk_text(text, chunk_size=500, overlap=100):
    """Split text into chunks with overlap"""
    chunks = []
    for i in range(0, len(text), chunk_size - overlap):
        chunks.append(text[i:i + chunk_size])
    return chunks

def print_results(question, answer, sources=None):
    """Pretty print results"""
    print("\n" + "="*60)
    print(f"Question: {question}")
    print("-"*60)
    print(f"Answer: {answer}")
    if sources:
        print("\nSources:")
        for source in sources:
            print(f"  - {source}")
    print("="*60 + "\n")
