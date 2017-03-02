:: Reference Doc:
:: https://www.iis.net/learn/manage/remote-administration/remote-administration-for-iis-manager

REM Enable Remote Connections
reg add HKLM\Software\Microsoft\WebManagement\Server /v EnableRemoteManagement /t REG_DWORD /d 1 /f

REM Start WMSVC on System Boot
sc config WMSVC start= auto

REM (Re)start WMSVC
sc stop WMSVC > nul
:start_wmsvc
sc start WMSVC > nul
if ERRORLEVEL 1 (
	timeout /nobreak 5
	GOTO start_wmsvc
)

echo Done.
