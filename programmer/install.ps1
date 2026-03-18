# 程序员职业框架安装脚本
# 使用方法: .\install.ps1

param(
    [string]$Action = "install",
    [switch]$Force
)

$ErrorActionPreference = "Stop"

# 配置
$OPENCLAW_HOME = "$env:USERPROFILE\.openclaw"
$WORKSPACE = "$OPENCLAW_HOME\workspace"
$FRAMEWORK_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$CONFIG_DIR = "$WORKSPACE\config"
$SKILLS_DIR = "$WORKSPACE\skills"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  程序员职业学习框架 - 安装脚本" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

function Test-OpenClaw {
    if (-not (Test-Path $OPENCLAW_HOME)) {
        Write-Host "[错误] 未检测到 OpenClaw 安装" -ForegroundColor Red
        Write-Host "请先安装 OpenClaw: npm install -g openclaw" -ForegroundColor Yellow
        exit 1
    }
    Write-Host "[OK] OpenClaw 已安装" -ForegroundColor Green
}

function Install-Config {
    Write-Host ""
    Write-Host "[1/4] 安装配置文件..." -ForegroundColor Yellow
    
    # 创建配置目录
    if (-not (Test-Path $CONFIG_DIR)) {
        New-Item -ItemType Directory -Path $CONFIG_DIR -Force | Out-Null
    }
    
    # 复制配置文件
    $configSrc = "$FRAMEWORK_DIR\career-config.json"
    $configDst = "$CONFIG_DIR\programmer-config.json"
    
    if ((Test-Path $configDst) -and -not $Force) {
        Write-Host "  [跳过] programmer-config.json 已存在 (使用 -Force 覆盖)" -ForegroundColor Gray
    } else {
        Copy-Item $configSrc $configDst -Force
        Write-Host "  [OK] programmer-config.json -> $configDst" -ForegroundColor Green
    }
}

function Install-Skills {
    Write-Host ""
    Write-Host "[2/4] 安装核心技能..." -ForegroundColor Yellow
    
    # 核心技能列表
    $skills = @(
        "code-review",
        "refactor-safely", 
        "testing-patterns",
        "security-audit",
        "python"
    )
    
    if (-not (Test-Path $SKILLS_DIR)) {
        New-Item -ItemType Directory -Path $SKILLS_DIR -Force | Out-Null
    }
    
    foreach ($skill in $skills) {
        $skillPath = "$SKILLS_DIR\$skill"
        if (Test-Path $skillPath) {
            Write-Host "  [已存在] $skill" -ForegroundColor Gray
        } else {
            Write-Host "  [安装] $skill..." -ForegroundColor Cyan
            & openclaw skill install $skill 2>$null
            if ($LASTEXITCODE -eq 0) {
                Write-Host "  [OK] $skill 安装成功" -ForegroundColor Green
            } else {
                Write-Host "  [警告] $skill 安装失败，请手动安装" -ForegroundColor Yellow
            }
        }
    }
}

function Setup-CronTasks {
    Write-Host ""
    Write-Host "[3/4] 配置定时任务..." -ForegroundColor Yellow
    
    # 读取配置
    $config = Get-Content "$FRAMEWORK_DIR\career-config.json" | ConvertFrom-Json
    $tasks = $config.cron_tasks
    
    foreach ($task in $tasks) {
        if ($task.enabled) {
            Write-Host "  [配置] $($task.name) - $($task.schedule)" -ForegroundColor Cyan
            # 这里只显示配置，实际需要通过 openclaw cron 命令创建
        }
    }
    
    Write-Host "  [提示] 请手动运行以下命令创建定时任务:" -ForegroundColor Yellow
    Write-Host "    openclaw cron create --name skill-learning-programmer --schedule '0 9,15,21 * * *'" -ForegroundColor Gray
}

function Show-NextSteps {
    Write-Host ""
    Write-Host "[4/4] 安装完成!" -ForegroundColor Green
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "  下一步操作" -ForegroundColor Cyan
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "1. 查看配置文件:" -ForegroundColor Yellow
    Write-Host "   code $CONFIG_DIR\programmer-config.json" -ForegroundColor Gray
    Write-Host ""
    Write-Host "2. 根据个人需求调整:" -ForegroundColor Yellow
    Write-Host "   - tech_stack: 技术栈" -ForegroundColor Gray
    Write-Host "   - focus_areas_selected: 专注领域" -ForegroundColor Gray
    Write-Host "   - daily_learning_hours: 每日学习时长" -ForegroundColor Gray
    Write-Host ""
    Write-Host "3. 查看技能清单:" -ForegroundColor Yellow
    Write-Host "   code $FRAMEWORK_DIR\SKILLS.md" -ForegroundColor Gray
    Write-Host ""
    Write-Host "4. 查看工作流程:" -ForegroundColor Yellow
    Write-Host "   code $FRAMEWORK_DIR\WORKFLOWS.md" -ForegroundColor Gray
    Write-Host ""
    Write-Host "5. 开始学习:" -ForegroundColor Yellow
    Write-Host "   openclaw skill learn code-review" -ForegroundColor Gray
    Write-Host ""
}

# 主流程
switch ($Action) {
    "install" {
        Test-OpenClaw
        Install-Config
        Install-Skills
        Setup-CronTasks
        Show-NextSteps
    }
    "uninstall" {
        Write-Host "[卸载] 移除程序员框架配置..." -ForegroundColor Yellow
        Remove-Item "$CONFIG_DIR\programmer-config.json" -ErrorAction SilentlyContinue
        Write-Host "[OK] 卸载完成" -ForegroundColor Green
    }
    "status" {
        Write-Host "[状态] 检查程序员框架..." -ForegroundColor Yellow
        if (Test-Path "$CONFIG_DIR\programmer-config.json") {
            Write-Host "  [OK] 配置文件已安装" -ForegroundColor Green
        } else {
            Write-Host "  [未安装] 配置文件不存在" -ForegroundColor Red
        }
    }
    default {
        Write-Host "用法: .\install.ps1 -Action [install|uninstall|status] [-Force]" -ForegroundColor Yellow
    }
}