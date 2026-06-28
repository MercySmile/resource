@echo off
chcp 65001 >nul

REM 获取当前 bat 文件所在目录
set "WORKDIR=%~dp0"

REM 在当前目录启动 PowerShell，并运行 Claude 命令
start "Claude Code" powershell.exe -NoExit -ExecutionPolicy Bypass -Command "Set-Location -LiteralPath '%WORKDIR%'; claude --dangerously-skip-permissions"