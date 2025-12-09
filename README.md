# ML_2026 – Machine Learning & Generative AI Learning Repository

A comprehensive, hands-on learning repository for **Machine Learning**, **Deep Learning**, and **Generative AI**. The primary focus is on **Large Language Models (LLMs)**, **LangChain**, and **Retrieval-Augmented Generation (RAG)** systems.

---

## 📖 About This Repository

**Learning Goal:**
To build a strong foundation in modern AI/ML development, with specialized expertise in LLM applications, RAG systems, and production-ready code. By the end of 2025, I aim to have:
- ✅ Complete understanding of LLM architectures and transformers
- ✅ Multiple production-ready RAG projects
- ✅ Proficiency with LangChain and vector databases
- ✅ Fine-tuning experience (LoRA/QLoRA)
- ✅ Deployable AI applications

**Repository Philosophy:**
- **Learn by doing** — Every concept is backed by code
- **Build projects** — Not just theory, but real-world applications
- **Progressive complexity** — Start simple, build up to production systems
- **Well-organized** — Easy to find and reference materials

---

## 📂 Repository Structure

```
ML_2026/
├── 00_Resources/           # Books, courses, external resources
├── 01_Fundamentals/        # Theory notes (Statistics, ML basics)
├── 02_Deep_Learning/       # CNN, RNN, Transformers, Sentiment Analysis
├── 03_LLM/                # ★ MAIN FOCUS - LLM & RAG Projects
│   ├── 01_Basics/         # Ollama, prompt engineering
│   ├── 02_RAG/            # Simple RAG → Production RAG
│   ├── 03_LangChain/      # Chains, agents, retrieval QA
│   ├── 04_Fine_Tuning/    # LoRA, QLoRA experiments
│   ├── 05_Projects/       # Complete applications
│   └── Concepts/          # LLM theory notes
├── 04_Data_Science/        # Statistics, regression, classification
├── 05_Misc/               # Quantum computing, experiments
├── _Utils/                # Setup scripts, utilities
├── docs/                  # Documentation & guides
└── requirements.txt       # Project dependencies
```

---

## 🎯 Learning Objectives by Phase

### Phase 1: Foundations (Weeks 1-4)
**Goal:** Build strong fundamentals in statistics and ML algorithms

**Topics:**
- Statistics: Mean, Variance, Distributions, Hypothesis Testing
- ML Basics: Supervised/Unsupervised Learning
- Algorithms: K-Means, KNN, Linear Regression
- Deep Learning: Perceptrons, Backpropagation

**Location:** `01_Fundamentals/`, `02_Deep_Learning/`

**Checkpoint:** Understand ML pipeline and basic DL concepts

---

### Phase 2: Deep Learning (Weeks 5-8)
**Goal:** Master neural network architectures

**Topics:**
- CNNs for image processing
- RNNs for sequence data
- Transformers and attention mechanisms
- Sentiment analysis with NLP

**Location:** `02_Deep_Learning/`

**Projects:**
- Image classification with CNN
- Sentiment analysis with RNN
- Transformer fine-tuning

**Checkpoint:** Build and train neural networks

---

### Phase 3: LLM & RAG (Weeks 9-16) ⭐
**Goal:** Become proficient with LLMs and RAG systems

**Topics:**
- LLM fundamentals and tokenization
- Ollama and open-source models
- Embeddings and vector databases
- Retrieval-Augmented Generation (RAG)
- LangChain framework

**Location:** `03_LLM/`

**Projects:**
1. **Simple RAG** — Manual retrieval and prompting
2. **Production RAG** — LangChain + Chroma + Ollama
3. **LangChain Chains** — Building complex LLM workflows
4. **Retrieval QA** — Multi-document question answering

**Checkpoint:** Build and deploy RAG systems

---

### Phase 4: Advanced Topics (Weeks 17+)
**Goal:** Optimize and deploy production systems

**Topics:**
- LoRA and QLoRA fine-tuning
- Prompt engineering best practices
- Web UI with Streamlit
- Deployment and scaling
- LLM agents and tools

**Location:** `03_LLM/04_Fine_Tuning/`, `03_LLM/05_Projects/`

**Projects:**
- Fine-tuned LLM for specific domain
- Web-based RAG application
- Multi-agent LLM system

**Checkpoint:** Deploy production-ready AI applications

---

## 🚀 Quick Start

### Prerequisites
- Python 3.8+
- pip
- Git

### Installation (3 minutes)

```bash
# 1. Clone repository
git clone https://github.com/TheAhmadSharif/ML_2026.git
cd ML_2026

# 2. Run setup script
bash _Utils/setup.sh

# 3. Activate virtual environment
source venv/bin/activate

# 4. Start coding!
cd 03_LLM/02_RAG/01_Simple_RAG
python3 simple_rag.py
```

See `docs/SETUP_GUIDE.md` for detailed instructions.

---

## 🎓 What You'll Learn

| Area | Topics | Location |
|------|--------|----------|
| **Statistics & Math** | Probability, distributions, linear algebra | `01_Fundamentals/` |
| **Classical ML** | Regression, classification, clustering | `04_Data_Science/` |
| **Deep Learning** | CNN, RNN, Transformers, attention | `02_Deep_Learning/` |
| **NLP** | Tokenization, embeddings, transformers | `03_LLM/Concepts/` |
| **LLMs** | Architecture, prompting, fine-tuning | `03_LLM/` |
| **RAG** | Retrieval, embeddings, integration | `03_LLM/02_RAG/` |
| **LangChain** | Chains, agents, tools | `03_LLM/03_LangChain/` |
| **Deployment** | Web UI, APIs, scaling | `03_LLM/05_Projects/` |

---

## 💻 Tech Stack

### Core Libraries
- **LLMs:** Ollama, HuggingFace Transformers
- **Frameworks:** LangChain, PyTorch, TensorFlow
- **Vector DB:** Chroma, FAISS
- **NLP:** spaCy, NLTK
- **Data:** NumPy, Pandas, Scikit-learn

### Tools & Platforms
- **Development:** Jupyter, VS Code, Python
- **Web:** Streamlit, FastAPI, Flask
- **DevOps:** Git, Bash, Docker (planned)
- **ML:** Ollama, HuggingFace Hub

---

## 📊 Project Showcase

### Current Projects

1. **Simple RAG Pipeline**
   - Manual document retrieval
   - Ollama LLM integration
   - Location: `03_LLM/02_RAG/01_Simple_RAG/`

2. **Production RAG System**
   - Document chunking and embedding
   - Chroma vector database
   - LangChain integration
   - Location: `03_LLM/02_RAG/02_Production_RAG/`

3. **LangChain Chains**
   - Sequential chains
   - Prompt templates
   - Custom tools
   - Location: `03_LLM/03_LangChain/`

### Planned Projects

- [ ] RAG Web Application (Streamlit)
- [ ] Multi-domain RAG systems
- [ ] LLM fine-tuning experiments
- [ ] LLM agents with tools
- [ ] PDF/document analyzer

---

## 📚 Learning Resources

- **Books:** See `00_Resources/Books/`
- **Courses:** Links in `docs/RESOURCES.md`
- **Papers:** Important ML/LLM papers listed in `docs/RESOURCES.md`
- **External:** HuggingFace, LangChain, Ollama official docs

See `docs/RESOURCES.md` for complete resource list.

---

## 🗺️ How to Use This Repository

### For Beginners
1. Start with `01_Fundamentals/` for theory
2. Move to `02_Deep_Learning/` for practical DL
3. Then explore `03_LLM/01_Basics/` for LLM intro

### For ML Experience
1. Jump to `03_LLM/` (main focus)
2. Understand RAG in `03_LLM/02_RAG/`
3. Build projects in `03_LLM/03_LangChain/`

### For Job Preparation
1. Complete projects in `03_LLM/05_Projects/`
2. Build portfolio (RAG + fine-tuning)
3. Deploy at least one application
4. Document everything on GitHub

---

## 📈 Progress Tracking

| Phase | Status | Target | Completion |
|-------|--------|--------|-----------|
| Foundations | ✅ | Week 4 | 100% |
| Deep Learning | 🔄 | Week 8 | 60% |
| LLM & RAG | 🔄 | Week 16 | 40% |
| Advanced | 📅 | Week 20+ | 0% |

**Overall Progress:** 🟡 On Track

---

## 🤝 Contributing & Updates

This is an active learning repository. Updates include:
- New projects and experiments
- Theory notes and documentation
- Improvements based on learning

**Last Updated:** December 2024  
**Next Focus:** Production RAG with Streamlit UI  
**Frequency:** Updated weekly

---

## 🎯 Final Goals

By end of 2025:
- ✅ 5+ working AI/ML projects
- ✅ 2+ production-ready RAG systems
- ✅ Proficiency in LangChain & vector databases
- ✅ Fine-tuning and prompt engineering expertise
- ✅ Deployable applications on GitHub
- ✅ Strong portfolio for ML/AI roles

---

## 📬 Contact & Links

- **GitHub:** [TheAhmadSharif](https://github.com/TheAhmadSharif)
- **LinkedIn:** [theahmadsharif](https://linkedin.com/in/theahmadsharif)
- **Email:** theahmadsharif@gmail.com

---

## 📜 License

This repository is for educational purposes. Feel free to fork, copy, and learn!

---

**Happy Learning! 🚀**

*"The best way to learn ML is to build. This repository is proof of that."*
