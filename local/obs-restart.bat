
@taskkill /F /IM obs64.exe >nul

@timeout /t 15 /nobreak >nul

@start /d "c:\Program Files\obs-studio\bin\64bit" obs64.exe --startstreaming >nul
