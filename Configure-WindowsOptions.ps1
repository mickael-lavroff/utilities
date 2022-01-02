# Right-click menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
Get-Process -Name explorer | Stop-Process -Force

# Enable Hyper-V
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart

# Enable WSL
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart

<# 

Improvments to think about :
****************************

- Install all Nerd Fonts
- Enable Containers feature
- Disable unused services
    - XPS documents writer
- Uninstall useless applications
    - PrimeVideo
    - TikTok
    - Microsoft News
    - Notepad
    - Paint
    - People
- Harden configuration
    - Disable powershell 2.0 features
    - Enable Defender Application Guard
- Adjuts default behaviors/settings
    - Show hidden folders
    - Terminal PowerShell instead of CMD (win+R)

#>