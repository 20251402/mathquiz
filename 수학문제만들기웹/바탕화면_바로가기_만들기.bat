@echo off
chcp 65001 > nul
echo 바탕화면에 바로가기를 생성합니다...

powershell -ExecutionPolicy Bypass -Command ^
  "$WshShell = New-Object -ComObject WScript.Shell;" ^
  "$Desktop = [Environment]::GetFolderPath('Desktop');" ^
  "$Shortcut = $WshShell.CreateShortcut(\"$Desktop\수학 문제 만들기.lnk\");" ^
  "$Shortcut.TargetPath = '%~dp0index.html';" ^
  "$Shortcut.WorkingDirectory = '%~dp0';" ^
  "$Shortcut.IconLocation = 'shell32.dll,21';" ^
  "$Shortcut.Description = '수학 문제 만들기 웹';" ^
  "$Shortcut.Save();" ^
  "Write-Host '바탕화면에 [수학 문제 만들기] 바로가기가 생성되었습니다!'"

echo.
pause
