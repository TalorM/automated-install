echo Making directory at C:\WorkstationSetup\Auto
mkdir C:\WorkstationSetup\Auto 2>nul
cd C:\WorkstationSetup\Auto

REM Define file variables
set FILE1=AdobeReader.exe
set URL1=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE1%
set FILE2=Dialpad.exe
set URL2=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE2%
set FILE3=GoogleChrome.msi
set URL3=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE3%
set FILE4=Java.exe
set URL4=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE4%
set FILE5=MSOffice.exe
set URL5=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE5%
set FILE6=MSTeams.exe
set URL6=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE6%
set FILE7=NotepadPP.exe
set URL7=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE7%
set FILE8=Python.exe
set URL8=https://github.com/TalorM/automated-install/releases/download/v1.0/%FILE8%

echo Downloading install files from GitHub
curl -L -o %FILE1% %URL1% || (echo Failed to download %FILE1%)
curl -L -o %FILE2% %URL2% || (echo Failed to download %FILE2%)
curl -L -o %FILE3% %URL3% || (echo Failed to download %FILE3%)
curl -L -o %FILE4% %URL4% || (echo Failed to download %FILE4%)
curl -L -o %FILE5% %URL5% || (echo Failed to download %FILE5%)
curl -L -o %FILE6% %URL6% || (echo Failed to download %FILE6%)
curl -L -o %FILE7% %URL7% || (echo Failed to download %FILE7%)
curl -L -o %FILE8% %URL8% || (echo Failed to download %FILE8%)

echo Installing applications
start /wait %FILE1% /s || (echo Failed to install %FILE1%)
start /wait %FILE2% /s || (echo Failed to install %FILE2%)
msiexec /i %FILE3% /quiet /norestart || (echo Failed to install %FILE3%)
start /wait %FILE4% /s || (echo Failed to install %FILE4%)
start /wait %FILE5% /s || (echo Failed to install %FILE5%)
start /wait %FILE6% /s || (echo Failed to install %FILE6%)
start /wait %FILE7% /s || (echo Failed to install %FILE7%)
start /wait %FILE8% /s || (echo Failed to install %FILE8%)

echo Installation process completed.
pause
