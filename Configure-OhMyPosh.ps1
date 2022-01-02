# Import custom theme
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/mickael-lavroff/config-files/main/ohmyposh-custom-theme-01.json" -OutFile $env:LOCALAPPDATA\Programs\oh-my-posh\themes\MickaelLavroff-Theme01.json

# Add oh-my-posh execution to all powershell default profile
# $PROFILE is different for WindowsPowerShell and PowerShell, VSCode and Terminal.
# Need to do all of them
$profileFiles = @(
    "$env:USERPROFILE\Documents\PowerShell\Microsoft.VSCode_profile.ps1"
    "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1"
    "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.VSCode_profile.ps1"
    "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
)

foreach ($profileFile in $profileFiles) {
    if (!(Test-Path $profileFile)) { 
        New-Item -Path $profileFile -Force
        Write-Output "`oh-my-posh --init --config $env:LOCALAPPDATA\Programs\oh-my-posh\themes\MickaelLavroff-Theme01.json --shell pwsh | Invoke-Expression" | Out-File -FilePath $profileFile -Force -Append
    }
    else {
        Write-Output "`noh-my-posh --init --config $env:LOCALAPPDATA\Programs\oh-my-posh\themes\MickaelLavroff-Theme01.json --shell pwsh | Invoke-Expression" | Out-File -FilePath $profileFile -Force -Append
    }
}

# Download and install my favorite NerdFont
Invoke-WebRequest -Uri https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip -OutFile $env:TEMP\CascadiaCode.zip
Expand-Archive -Path $env:TEMP\CascadiaCode.zip -DestinationPath $env:TEMP\CascadiaCode -Force
$fonts = (New-Object -ComObject Shell.Application).Namespace(0x14)
gci $env:TEMP\CascadiaCode | % { $fonts.CopyHere($_.FullName) }
Remove-Item $env:TEMP\CascadiaCode.zip, $env:TEMP\CascadiaCode -Recurse -Force

# Configure Nerd Font in host console (PowerShell and WindowsPowerShell)
Set-ItemProperty -Path HKCU:\Console -Name FaceName -Value "CaskaydiaCove Nerd Font Mono"

# Configure Nerd Font in Terminal Profile (PowerShell and WindowsPowerShell)
<#
*************************************************************************************
This part is currently treated in Configure-Terminal using a full json settings file.
It could be way better to provide flexibility here (regarding OMP setup only).
*************************************************************************************

if (!(Test-Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json)) {
    Invoke-WebRequest -Uri "https://github.com/mickael-lavroff/config-files/blob/main/ohmyposh-custom-theme-01.json" -OutFile $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
}
else {
    $jsonConfigFile = Get-Content $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json | ConvertFrom-Json
    $jsonConfigFile.profiles.list | ? guid -EQ '{574e775e-4f2a-5b96-ac1e-a2962a402336}' | Add-Member -Type NoteProperty -Name 'font' -Value ([PSCustomObject]@{ face = "CaskaydiaCove Nerd Font Mono" })
    $jsonConfigFile | ConvertTo-Json -Depth 20 | Set-Content -Path $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
}#>