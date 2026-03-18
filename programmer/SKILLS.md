# 程序员框架完整技能清单

## 一、代码审查 (code-review)

**来源**: ClawHub  
**安装**: `openclaw skill install code-review`

### 学习路径
1. 审查规范学习 - 理解代码审查的目的和价值
2. 安全漏洞识别 - SQL注入、XSS、CSRF等常见漏洞
3. 性能问题发现 - 循环优化、内存泄漏、查询优化
4. 代码味道识别 - 重复代码、过长函数、过大类
5. 结构化反馈输出 - 严重程度分级、修复建议

### 审查检查清单
```
□ 安全性：输入验证、权限检查、敏感数据处理
□ 性能：循环效率、查询优化、缓存使用
□ 可维护性：命名规范、代码重复、复杂度
□ 正确性：边界条件、错误处理、测试覆盖
□ 可读性：注释质量、代码组织、格式统一
```

---

## 二、安全重构 (refactor-safely)

**来源**: ClawHub  
**安装**: `openclaw skill install refactor-safely`

### 学习路径
1. 重构原则理解 - 行为不变、小步前进
2. 小步重构实践 - 每次只做一个小改动
3. 测试驱动重构 - 先写测试，再重构
4. 回滚策略制定 - Git 分支、版本控制
5. 重构风险评估 - 识别高风险重构

### 重构检查表
```
□ 测试覆盖率 ≥ 80%
□ 每步改动可独立提交
□ 准备了回滚方案
□ 更新了相关文档
```

---

## 三、测试模式 (testing-patterns)

**来源**: ClawHub  
**安装**: `openclaw skill install testing-patterns`

### 学习路径
1. 测试金字塔理解 - 单元 > 集成 > E2E
2. 单元测试编写 - AAA模式、边界测试
3. Mock与Stub使用 - 依赖隔离、行为验证
4. 集成测试设计 - 组件交互、数据流
5. E2E测试实践 - 用户场景、UI自动化

### 测试原则 (FIRST)
```
F - Fast: 测试要快
I - Isolated: 测试要独立
R - Repeatable: 测试要可重复
S - Self-Validating: 测试要自验证
T - Timely: 测试要及时编写
```

---

## 四、安全审计 (security-audit)

**来源**: ClawHub  
**安装**: `openclaw skill install security-audit`

### 学习路径
1. OWASP Top 10 学习
2. SQL注入防护
3. XSS防护
4. 认证授权检查
5. 敏感数据处理

### OWASP Top 10 检查
```
1. 注入攻击
2. 失效的身份认证
3. 敏感数据泄露
4. XML 外部实体
5. 访问控制失效
6. 安全配置错误
7. 跨站脚本 XSS
8. 不安全的反序列化
9. 使用含漏洞的组件
10. 日志和监控不足
```

---

## 五、Python最佳实践 (python)

**来源**: ClawHub  
**安装**: `openclaw skill install python`

### 学习路径
1. PEP 8 规范
2. 类型注解
3. 异步编程
4. 性能优化
5. 代码组织

### Python 编码规范
```
□ 使用 4 空格缩进
□ 行长度不超过 79 字符
□ 使用有意义的变量名
□ 函数添加文档字符串
□ 使用类型注解
```

---

## 六、Vue最佳实践 (vue-best-practices)

**来源**: ClawHub  
**安装**: `openclaw skill install vue-best-practices`

### 学习路径
1. Composition API
2. TypeScript集成
3. 状态管理
4. 性能优化

### Vue 3 最佳实践
```
□ 使用 <script setup> 语法
□ 使用 Composition API
□ 组件按功能拆分
□ 使用 TypeScript
□ 合理使用 computed 和 watch
```