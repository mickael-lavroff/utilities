# Import custom theme
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/mickael-lavroff/oh-my-posh/main/CustomTheme01.json" -OutFile $env:LOCALAPPDATA\Programs\oh-my-posh\themes\CustomTheme01.json

# Add this to powershell default profile
Write-Output "`noh-my-posh --init --config $env:LOCALAPPDATA\Programs\oh-my-posh\themes\CustomTheme01.json --shell pwsh | Invoke-Expression" | Out-File -FilePath $profile -Force -Append