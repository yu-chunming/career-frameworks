# OpenClaw Career Learning Frameworks

A collection of ready-to-use, professional AI assistant frameworks designed for different career paths. Each framework is completely independent and can be directly used by OpenClaw.

## ✨ Features

- **🚀 Ready to Use**: Each framework is self-contained with 8 standard files
- **⛔ Safety First**: Built-in safety rules to protect user data and files
- **🧠 Memory System**: Three-layer memory architecture with daily backup at 24:00
- **📚 Public Skills Only**: All skills are from ClawHub or Anthropic (no local custom skills)
- **⚡ Quick Start**: Just give one folder to OpenClaw and it learns everything

## 📦 Available Frameworks

| Career | Directory | Core Skills |
|--------|-----------|-------------|
| Software Developer | `programmer/` | code-review, refactor-safely, testing-patterns, security-audit |
| Content Writer | `writer/` | writer, summarize, python |
| Content Creator | `content-creator/` | writer, summarize, python, frontend-design |
| Product Manager | `product-manager/` | frontend-design, python, writer, summarize |
| Data Analyst | `data-analyst/` | python, writer, summarize |
| Designer | `designer/` | frontend-design, vue-best-practices, writer |
| Project Manager | `project-manager/` | writer, python, summarize |

## 📁 Framework Structure (8 Files)

```
[career-directory]/
├── README.md              # Quick start guide
├── SAFETY-RULES.md        # Safety red lines
├── career-config.json     # Core configuration
├── SKILLS.md              # Skill details
├── WORKFLOWS.md           # Workflow templates
├── MEMORY-SYSTEM.md       # Memory backup mechanism
├── MEMORY.md              # Long-term memory
└── install.ps1            # Installation script
```

## 🚀 Quick Start

Give any framework folder to OpenClaw and say:

```
"Please learn all files in this directory:
1. Read SAFETY-RULES.md and follow the safety rules
2. Read career-config.json to understand the configuration
3. Read SKILLS.md to learn about the skills
4. Read WORKFLOWS.md to master the workflows
5. Read MEMORY-SYSTEM.md to understand the memory mechanism

Reply with confirmation when done, then start running according to the framework."
```

OpenClaw will then:
1. ✅ Learn safety rules
2. ✅ Load framework configuration
3. ✅ Install public skills
4. ✅ Run daily memory backup at 24:00
5. ✅ Summarize user habits automatically
6. ✅ Identify skills to solidify
7. ✅ Generate daily evolution reports

## ⛔ Safety Rules

Every framework enforces these safety rules:
- 🚫 **NEVER** delete any files or folders
- 🔐 Ask for confirmation before handling sensitive information
- 🌐 Ask for confirmation before sending/uploading content
- 💻 Ask for confirmation before running system commands
- 🔍 Check safety before installing new skills

## 🧠 Memory System

### Three-Layer Memory Architecture
| Layer | Name | Storage |
|-------|------|---------|
| L1 | Working Memory | Session temporary |
| L2 | Short-term Memory | `memory/YYYY-MM-DD.md` |
| L3 | Long-term Memory | `MEMORY.md` |

### Daily Tasks
| Task | Time | Action |
|------|------|--------|
| Daily Memory Backup | 24:00 | Review sessions → Extract info → Summarize habits → Identify solidifiable skills |
| Weekly Memory Review | Sunday 20:00 | Update long-term memory → Clean outdated info |

### Skill Solidification Criteria
- ✅ Used 3+ times
- ✅ Solves generic problems
- ✅ Can be standardized

## 📊 Project Structure

```
career-frameworks/
├── README.md                 # This file
├── README-CN.md              # Chinese documentation
├── QUICK-START.md            # Quick start guide
├── FRAMEWORK-LEARNING.md     # Learning instructions
├── templates/                # Templates for custom frameworks
│   ├── base-config.json
│   └── custom-guide.md
├── programmer/               # Software Developer framework
├── writer/                   # Content Writer framework
├── content-creator/          # Content Creator framework
├── product-manager/          # Product Manager framework
├── data-analyst/             # Data Analyst framework
├── designer/                 # Designer framework
└── project-manager/          # Project Manager framework
```

## 🔧 Customization

Each framework can be customized by editing `career-config.json`:
- Adjust learning schedule
- Change skill priorities
- Modify daily learning hours
- Add personal preferences

See `templates/custom-guide.md` for detailed instructions.

## 🤝 Contributing

Contributions are welcome! To add a new career framework:

1. Fork this repository
2. Create a new directory under `career-frameworks/`
3. Follow the 8-file structure
4. Submit a Pull Request

## 📄 License

MIT License

---

**Created**: 2026-03-18  
**Version**: 1.0  
**Author**: Claw (OpenClaw AI Assistant)  
**Repository**: https://github.com/your-username/career-frameworks