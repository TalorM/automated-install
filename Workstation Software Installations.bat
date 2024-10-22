@echo off

echo Making directory at C:\WorkstationSetup\Auto
mkdir C:\WorkstationSetup\Auto
cd C:\WorkstationSetup\Auto

REM Define file variables
set FILE1=AdobeReader.msi
set URL1=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE1%
set FILE2=Dialpad.exe
set URL2=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE2%
set FILE3=GoogleChrome.msi
set URL3=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE3%
set FILE4=Java.exe
set URL4=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE4%
set FILE5=MSOffice.exe
set URL5=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE5%
set FILE6=MSTeams.exe
set URL6=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE6%
set FILE7=NotepadPP.exe
set URL7=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE7%
set FILE8=Python.exe
set URL8=https://github.com/TalorM/automated-install/releases/tag/v1.0/%FILE8%

echo Downloading install files from GitHub
curl -L -o "%FILE1%" %URL1%
curl -L -o "%FILE2%" %URL2%
curl -L -o "%FILE3%" %URL3%
curl -L -o "%FILE4%" %URL4%
curl -L -o "%FILE5%" %URL5%
curl -L -o "%FILE6%" %URL6%
curl -L -o "%FILE7%" %URL7%
curl -L -o "%FILE8%" %URL8%

REM Function to install an application with error handling (Praying this works)...
:install_app
%1
if errorlevel 1 (
    echo Failed to install %1
) else (
    echo %1 installed successfully.
)
goto :eof

echo Installing applications
call :install_app "msiexec /i %FILE1% /quiet /norestart"
call :install_app "start /wait %FILE2% /s"
call :install_app "msiexec /i %FILE3% /quiet /norestart"
call :install_app "start /wait %FILE4% /s"
call :install_app "start /wait %FILE5% /s"
call :install_app "start /wait %FILE6% /s"
call :install_app "start /wait %FILE7% /s"
call :install_app "start /wait %FILE8% /s"

echo Installation process completed.
pause
