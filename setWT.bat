@echo off
set USER=%USERPROFILE:~9%
mkdir "%USERPROFILE%\AppData\Local\Terminal"
curl https://gitee.com/Jioho/img/raw/master/wsl/terminal.ico > %USERPROFILE%\AppData\Local\Terminal\terminal.ico
echo Windows Registry Editor Version 5.00 >> wt.reg
echo [HKEY_CLASSES_ROOT\Directory\Background\shell\wt] >> wt.reg
echo @^="Windows Terminal here" >> wt.reg
echo "Icon"^="C:\\Users\\%USER%\\AppData\\Local\\Terminal\\terminal.ico">> wt.reg
echo [HKEY_CLASSES_ROOT\Directory\Background\shell\wt\command]>> wt.reg
echo @^="C:\\Users\\%USER%\\AppData\\Local\\Microsoft\\WindowsApps\\wt.exe -d ./">> wt.reg
wt.reg && del wt.reg