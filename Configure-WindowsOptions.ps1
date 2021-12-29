# Allow running unsigned scripts on system
Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Right-click menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

# Enable Hyper-V
Enable-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online -NoRestart

# Enable WSL
Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -NoRestart

# Download and install my favorite NerdFont
Invoke-WebRequest -Uri https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip -OutFile $PSScriptRoot\CascadiaCode.zip
Expand-Archive -Path $PSScriptRoot\CascadiaCode.zip -DestinationPath $PSScriptRoot\CascadiaCode -Force
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
gci $PSScriptRoot\CascadiaCode | % { $fonts.CopyHere($_.FullName) }
Remove-Item $PSScriptRoot\CascadiaCode.zip,$PSScriptRoot\CascadiaCode -Recurse -Force

