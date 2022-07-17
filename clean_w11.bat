REM Categorie Systeme

powershell -command "Get-AppxPackage Microsoft.SecHealthUI -AllUsers | Reset-AppxPackage"
powershell -command "Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux"
powershell -command "'C:\Program Files (x86)\Microsoft\Edge\Application\*\Installer\setup.exe' --uninstall --force-uninstall --system-level"

REM Categorie Apps

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PushNotifications /v ToastEnabled /t REG_DWORD /d 0 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\cellularData /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\gazeInput /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetooth /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks /v Value /t REG_SZ /d "Deny" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ToastEnabled /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary /v Value /t REG_SZ /d "Deny" /f

REM Categorie Gaming

reg add HKEY_CURRENT_USER\System\GameConfigStore /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\System\GameConfigStore /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR /v value /t REG_DWORD /d 0 /f

reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling /v PowerThrottlingOff /t REG_DWORD /d 1 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects /v VisualFXSetting /t REG_DWORD /d 2 /f

REM Categorie Personnalisation

powershell -command "winget uninstall 'Windows web experience Pack'"
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer /v ShowOrHideMostUsedApps /t REG_DWORD /d 2 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

REM Categorie Vie Privee

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo /v Enabled /t REG_DWORD /d 0 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f

reg add HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Biometrics /v Enabled /t REG_DWORD /d 0 /f

reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DiagTrack /v Start /t REG_DWORD /d 4 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmwappushservice /v Start /t REG_DWORD /d 4 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules /v PeriodInNanoSeconds /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Siuf\Rules /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f

reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location /v Value /t REG_SZ /d "Deny" /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v SubscribedContent-338393Enabled /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v SubscribedContent-353694Enabled /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Privacy /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f

REM Categorie Services

sc stop "DiagTrack" && sc config "DiagTrack" start= disabled
sc stop "dmwappushservice" && sc config "dmwappushservice" start= disabled
sc stop "SCardSvr" && sc config "SCardSvr" start= disabled
sc stop "SessionEnv" && sc config "SessionEnv" start= disabled
sc stop "PimIndexMaintenanceSvc" && sc config "PimIndexMaintenanceSvc" start= disabled
sc stop "WiaRpc" && sc config "WiaRpc" start= disabled
sc stop "Télécopie" && sc config "Télécopie" start= disabled
sc stop "WinRM" && sc config "WinRM" start= disabled
sc stop "SEMgrSvc" && sc config "SEMgrSvc" start= disabled
sc stop "lfsvc" && sc config "lfsvc" start= disabled
sc stop "LxssManager" && sc config "LxssManager" start= disabled
sc stop "SharedAccess" && sc config "SharedAccess" start= disabled
sc stop "UmRdpService" && sc config "UmRdpService" start= disabled
sc stop "RemoteRegistry" && sc config "RemoteRegistry" start= disabled
sc stop "MixedRealityOpenXRSvc" && sc config "MixedRealityOpenXRSvc" start= disabled
sc stop "WbioSrvc" && sc config "WbioSrvc" start= disabled
sc stop "VacSvc" && sc config "VacSvc" start= disabled
sc stop "SharedRealitySvc" && sc config "SharedRealitySvc" start= disabled
sc stop "spectrum" && sc config "spectrum" start= disabled
sc stop "perceptionsimulation" && sc config "spectrum" start= disabled
sc stop "TermService" && sc config "TermService" start= disabled

REM Securite - Fix Temporaire

REM reg export HKEY_CLASSES_ROOT\\ms-msdt jackobo-search-ms.reg
REM reg delete HKEY_CLASSES_ROOT\\ms-msdt /f
