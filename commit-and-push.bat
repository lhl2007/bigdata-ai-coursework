@echo off
REM ============================================================
REM  commit-and-push.bat
REM  用法：双击运行 -> 输入 commit 信息 -> 回车 -> 自动 add+commit+push
REM ============================================================

setlocal

cd /d "C:\Users\lhl\Projects\bigdata-ai-coursework"

echo.
echo === 仓库: %CD% ===
echo.

REM 显示当前状态
git status -sb
echo.

REM 让用户输入 commit 信息（允许空 -> 默认用日期时间）
set "MSG="
set /p "MSG=请输入 commit 信息（直接回车使用默认）: "

if "%MSG%"=="" (
    for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value 2^>nul ^| find "="') do set "DT=%%i"
    set "MSG=chore: auto commit at %DT:~0,8% %DT:~8,6%"
)

echo.
echo === git add . ===
git add .
set RC_ADD=%ERRORLEVEL%
if %RC_ADD% NEQ 0 (
    echo [X] git add 失败，退出码 %RC_ADD%
    pause
    exit /b %RC_ADD%
)

echo.
echo === git commit -m "%MSG%" ===
git commit -m "%MSG%"
set RC_COMMIT=%ERRORLEVEL%
if %RC_COMMIT% NEQ 0 (
    echo [!] 没有需要 commit 的内容，继续尝试 push...
)

echo.
echo === git push origin main ===
git push origin main
set RC_PUSH=%ERRORLEVEL%

echo.
if %RC_PUSH% NEQ 0 (
    echo [X] push 退出码 %RC_PUSH%，请查看上方报错。
) else (
    echo [OK] 全部完成。
)

echo.
pause
endlocal