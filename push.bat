@echo off
REM ============================================================
REM  push.bat - 一键推送 bigdata-ai-coursework 的本地 commit
REM  使用方法：双击本文件即可
REM ============================================================

setlocal

cd /d "C:\Users\lhl\Projects\bigdata-ai-coursework"

echo.
echo === 仓库:  %CD% ===
echo === 即将推送 (origin/main) ===
echo.

git push origin main
set RC=%ERRORLEVEL%

echo.
if %RC% NEQ 0 (
    echo [X] push 退出码 %RC%，请查看上方报错。
) else (
    echo [OK] push 完成。
)

echo.
echo （按任意键关闭窗口）
pause >nul
endlocal