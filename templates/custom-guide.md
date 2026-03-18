# 职业框架自定义指南

本指南帮助你根据个人需求快速调整职业学习框架。

## 一、配置文件结构

```
career-config.json
├── meta                 # 元信息
├── career_profile       # 职业档案
├── skills               # 技能清单
├── learning_schedule    # 学习计划
├── cron_tasks           # 定时任务
├── workflows            # 工作流程
└── personalization      # 个性化设置
```

## 二、必改项（首次使用）

### 1. 个人信息

```json
{
  "personalization": {
    "name": "你的名字",
    "experience_level": "junior|mid|senior",
    "learning_intensity": "low|moderate|high"
  }
}
```

### 2. 学习时间

根据你的作息调整：

```json
{
  "learning_schedule": {
    "daily_learning_hours": 2,
    "time_slots": {
      "morning": {
        "time": "你的早间时段",
        "focus": ["想学的技能"]
      }
    }
  }
}
```

### 3. 技能优先级

根据个人需求调整每个技能的 `priority`（1-5）：

```json
{
  "skills": [
    {
      "id": "skill-name",
      "priority": 5,  // 越高越优先
      "daily_time_minutes": 30
    }
  ]
}
```

## 三、可选项（进阶定制）

### 1. 添加新技能

```json
{
  "id": "new-skill",
  "name": "新技能名称",
  "category": "类别",
  "priority": 3,
  "daily_time_minutes": 15,
  "source": "clawhub",  // 来源：clawhub|local|builtin
  "description": "技能描述",
  "learning_path": ["步骤1", "步骤2"]
}
```

### 2. 添加定时任务

```json
{
  "name": "my-custom-task",
  "schedule": "0 9 * * *",  // cron表达式
  "timezone": "Asia/Shanghai",
  "action": "任务描述",
  "enabled": true
}
```

### 3. 添加工作流程

```json
{
  "workflows": {
    "my-workflow": {
      "name": "我的流程",
      "steps": ["步骤1", "步骤2", "步骤3"],
      "output_format": "markdown"
    }
  }
}
```

## 四、技能来源说明

| 来源 | 说明 | 示例 |
|------|------|------|
| `clawhub` | ClawHub 技能库 | code-review, python |
| `local` | 本地已安装技能 | jimeng-ai |
| `builtin` | 内置能力 | grammar-check |
| `anthropic` | Anthropic 技能 | frontend-design |

## 五、常用 Cron 表达式

| 表达式 | 含义 |
|--------|------|
| `0 9 * * *` | 每天 9:00 |
| `0 */2 * * *` | 每 2 小时 |
| `0 9 * * 1` | 每周一 9:00 |
| `0 20 * * 0` | 每周日 20:00 |
| `0 9,15,21 * * *` | 每天 9:00, 15:00, 21:00 |

## 六、快速检查清单

使用前确认：

```
□ 已修改 personalization 中的个人信息
□ 已调整 daily_learning_hours
□ 已根据需求调整技能优先级
□ 已检查定时任务时区设置
□ 已阅读 SKILLS.md 了解学习路径
```

## 七、常见问题

**Q: 如何关闭某个技能？**
A: 将该技能的 `priority` 设为 0 或从数组中移除。

**Q: 如何增加每日学习时间？**
A: 修改 `daily_learning_hours` 和各技能的 `daily_time_minutes`。

**Q: 如何添加自定义技能？**
A: 在 `skills` 数组中添加新对象，`source` 设为 `builtin`。

**Q: 定时任务不执行？**
A: 检查 `enabled` 是否为 `true`，时区是否正确。

---

更多问题请参考 OpenClaw 官方文档：https://docs.openclaw.ai