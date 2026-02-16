code-synthesis-engine/
├── README.md
├── PLAN.md
├── requirements.txt
├── config.yaml
├── src/
│   └── code_synthesis/
│       ├── __init__.py
│       ├── engine.py          # Main synthesis engine
│       ├── parser/
│       │   ├── __init__.py
│       │   └── intent.py      # Natural language parser
│       ├── patterns/
│       │   ├── __init__.py
│       │   └── matcher.py     # Pattern matching with vector DB
│       ├── synthesis/
│       │   ├── __init__.py
│       │   └── generator.py   # LLM integration
│       └── validator/
│           ├── __init__.py
│           └── checker.py     # Code validation
├── data/
│   └── .gitkeep
├── models/
│   └── .gitkeep
├── scripts/
│   └── download-model.sh
└── tests/
    └── .gitkeep
