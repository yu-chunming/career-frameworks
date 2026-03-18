# 自媒体工作者职业框架安装脚本
param([string]$Action = "install", [switch]$Force)

$OPENCLAW_HOME = "$env:USERPROFILE\.openclaw"
$WORKSPACE = "$OPENCLAW_HOME\workspace"
$FRAMEWORK_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
$CONFIG_DIR = "$WORKSPACE\config"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  自媒体工作者职业学习框架 - 安装脚本" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

function Test-OpenClaw {
    if (-not (Test-Path $OPENCLAW_HOME)) {
        Write-Host "[错误] 未检测到 OpenClaw 安装" -ForegroundColor Red
        Write-Host "请先安装 OpenClaw: npm install -g openclaw" -ForegroundColor Yellow
        exit 1
    }
    Write-Host "[OK] OpenClaw 已安装" -ForegroundColor Green
}

function Install-Config {
    Write-Host "[1/3] 安装配置文件..." -ForegroundColor Yellow
    if (-not (Test-Path $CONFIG_DIR)) { New-Item -ItemType Directory -Path $CONFIG_DIR -Force | Out-Null }
    $configSrc = "$FRAMEWORK_DIR\career-config.json"
    $configDst = "$CONFIG_DIR\content-creator-config.json"
    if ((Test-Path $configDst) -and -not $Force) {
        Write-Host "  [跳过] content-creator-config.json 已存在" -ForegroundColor Gray
    } else {
        Copy-Item $configSrc $configDst -Force
        Write-Host "  [OK] content-creator-config.json" -ForegroundColor Green
    }
}

function Install-Skills {
    Write-Host "[2/3] 安装核心技能..." -ForegroundColor Yellow
    $skills = @("writer", "summarize", "python", "frontend-design")
    foreach ($skill in $skills) {
        Write-Host "  [安装] $skill..." -ForegroundColor Cyan
        & openclaw skill install $skill 2>$null
    }
    Write-Host "  [提示] 核心技能已尝试安装" -ForegroundColor Yellow
}

function Show-NextSteps {
    Write-Host "[3/3] 安装完成!" -ForegroundColor Green
    Write-Host ""
    Write-Host "下一步:" -ForegroundColor Yellow
    Write-Host "  1. 编辑配置: code $CONFIG_DIR\content-creator-config.json" -ForegroundColor Gray
    Write-Host "  2. 查看技能: code $FRAMEWORK_DIR\SKILLS.md" -ForegroundColor Gray
    Write-Host "  3. 开始使用: 让 OpenClaw 学习本框架" -ForegroundColor Gray
}

switch ($Action) {
    "install" { Test-OpenClaw; Install-Config; Install-Skills; Show-NextSteps }
    "uninstall" { Remove-Item "$CONFIG_DIR\content-creator-config.json" -ErrorAction SilentlyContinue; Write-Host "[OK] 卸载完成" -ForegroundColor Green }
    "status" { if (Test-Path "$CONFIG_DIR\content-creator-config.json") { Write-Host "[已安装]" -ForegroundColor Green } else { Write-Host "[未安装]" -ForegroundColor Red } }
    default { Write-Host "用法: .\install.ps1 -Action [install|uninstall|status]" }
}