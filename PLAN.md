# Code Synthesis Engine - Implementation Plan

## Phase 1: Foundation (Current)
- [x] Project structure
- [x] Architecture documentation
- [ ] Core module scaffolding

## Phase 2: Intent Parser
- Natural language understanding
- Requirement extraction
- Constraint parsing

## Phase 3: Pattern System
- Vector database setup (ChromaDB or FAISS)
- Code embedding generation
- Similarity search

## Phase 4: LLM Integration
- Local model loading (llama.cpp)
- Prompt template system
- Streaming generation

## Phase 5: Validation
- AST-based syntax check
- Type stub generation
- Auto-formatting (black/ruff)

## Phase 6: Training Pipeline
- Codebase indexing
- Pattern extraction
- Fine-tuning data preparation

## Tech Stack
- **NLP**: spaCy for intent parsing
- **Embeddings**: sentence-transformers (local)
- **Vector DB**: ChromaDB
- **LLM**: CodeLlama via llama-cpp-python
- **Validation**: ast, mypy, black

## Next Steps
1. Implement intent parser with spaCy
2. Set up ChromaDB for pattern storage
3. Download and test local CodeLlama model
