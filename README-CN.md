# OpenClaw 职业学习框架合集

一套开箱即用的职业化 AI 助手框架，帮助不同职业的用户快速配置专属 AI 助手。每个框架完全独立，可直接交给 OpenClaw 学习使用。

## ✨ 特性

- **🚀 开箱即用**：每个框架自包含 8 个标准文件
- **⛔ 安全优先**：内置安全红线，保护用户数据和文件
- **🧠 记忆系统**：三层记忆架构，每日 24:00 自动备份
- **📚 公开技能**：所有技能来自 ClawHub 或 Anthropic
- **⚡ 快速启动**：只需一个文件夹，OpenClaw 自动学习

## 📦 可用框架

| 职业 | 目录 | 核心技能 |
|------|------|----------|
| 程序员 | `programmer/` | code-review, refactor-safely, testing-patterns, security-audit |
| 文字工作者 | `writer/` | writer, summarize, python |
| 自媒体工作者 | `content-creator/` | writer, summarize, python, frontend-design |
| 产品经理 | `product-manager/` | frontend-design, python, writer, summarize |
| 数据分析师 | `data-analyst/` | python, writer, summarize |
| 设计师 | `designer/` | frontend-design, vue-best-practices, writer |
| 项目经理 | `project-manager/` | writer, python, summarize |

## 📁 框架结构（8个文件）

```
[职业目录]/
├── README.md              # 快速启动说明
├── SAFETY-RULES.md        # 安全红线
├── career-config.json     # 核心配置
├── SKILLS.md              # 技能详情
├── WORKFLOWS.md           # 工作流程
├── MEMORY-SYSTEM.md       # 记忆备份机制
├── MEMORY.md              # 长期记忆
└── install.ps1            # 安装脚本
```

## 🚀 快速启动

把任意框架文件夹给 OpenClaw，说：

```
"请学习当前目录下的所有文件：
1. 阅读 SAFETY-RULES.md 安全红线并遵守
2. 阅读 career-config.json 理解配置
3. 阅读 SKILLS.md 了解技能
4. 阅读 WORKFLOWS.md 掌握流程
5. 阅读 MEMORY-SYSTEM.md 理解记忆机制

学习完成后回复确认，并开始按框架运行。"
```

OpenClaw 会自动：
1. ✅ 学习安全红线
2. ✅ 加载框架配置
3. ✅ 安装公开技能
4. ✅ 每 24 点自动记忆备份
5. ✅ 自动总结用户习惯
6. ✅ 自动判断固化技能
7. ✅ 生成每日进化报告

## ⛔ 安全红线

每个框架都强制执行以下安全规则：
- 🚫 **禁止删除**任何文件或文件夹
- 🔐 处理敏感信息前需确认
- 🌐 发送/上传内容前需确认
- 💻 执行系统命令前需确认
- 🔍 安装新技能前需安全检查

## 🧠 记忆系统

### 三层记忆架构
| 层级 | 名称 | 存储位置 |
|------|------|----------|
| L1 | 工作记忆 | 会话临时存储 |
| L2 | 短期记忆 | `memory/YYYY-MM-DD.md` |
| L3 | 长期记忆 | `MEMORY.md` |

### 定时任务
| 任务 | 时间 | 执行内容 |
|------|------|----------|
| 每日记忆备份 | 24:00 | 回顾会话 → 提取信息 → 总结习惯 → 判断固化技能 |
| 每周记忆回顾 | 周日 20:00 | 更新长期记忆 → 清理过时信息 |

### 固化技能标准
- ✅ 使用 3 次以上
- ✅ 解决通用问题
- ✅ 可以标准化

## 🔧 自定义

每个框架都可以通过编辑 `career-config.json` 进行自定义：
- 调整学习计划
- 修改技能优先级
- 设置每日学习时长
- 添加个人偏好

详见 `templates/custom-guide.md`。

## 📄 许可证

MIT License

---

**创建时间**：2026-03-18  
**版本**：v1.0  
**作者**：Claw (OpenClaw AI Assistant)