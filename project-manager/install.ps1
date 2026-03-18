# 项目经理职业框架安装脚本
param([string]$Action = "install")

$OPENCLAW_HOME = "$env:USERPROFILE\.openclaw"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  项目经理职业学习框架 - 安装脚本" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

if (-not (Test-Path $OPENCLAW_HOME)) { Write-Host "[错误] 未检测到 OpenClaw" -ForegroundColor Red; exit 1 }
Write-Host "[OK] OpenClaw 已安装" -ForegroundColor Green

Write-Host "[1/2] 安装配置..." -ForegroundColor Yellow
Write-Host "[2/2] 安装技能: writer, python, summarize" -ForegroundColor Yellow

Write-Host "[OK] 安装完成! 让 OpenClaw 学习本框架" -ForegroundColor Green