winget upgrade --all

# Base software
winget install --id=Microsoft.Office -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.PowerToys -e -h --accept-package-agreements --accept-source-agreements 
winget install --id=.7zip7zip -e -h --accept-package-agreements --accept-source-agreements
winget install --id=VideoLAN.VLC -e -h --accept-package-agreements --accept-source-agreements
winget install --id=File-New-Project.EarTrumpet  -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.VisualStudioCode -e -h --accept-package-agreements --accept-source-agreements

# Scripting tools
winget install --id=Microsoft.Git -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.PowerShell -e -h --accept-package-agreements --accept-source-agreements
#winget install --id=Microsoft.WindowsTerminal -e -h --accept-package-agreements --accept-source-agreements
winget install --id=JanDeDobbeleer.OhMyPosh -e -h --accept-package-agreements --accept-source-agreements

# Azure related tools
winget install --id=Microsoft.AzureCLI -e -h --accept-package-agreements --accept-source-agreements
Winget install --id=Microsoft.Bicep -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.AzureStorageExplorer -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.AzureDataStudio -e -h --accept-package-agreements --accept-source-agreements

# Work related software
winget install --id=Microsoft.Teams -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Microsoft.PowerBI -e -h --accept-package-agreements --accept-source-agreements

# Optional utilities
winget install --id=NickeManarin.ScreenToGif -e -h --accept-package-agreements --accept-source-agreements
#winget install --id=DominikReichl.KeePass -e -h --accept-package-agreements --accept-source-agreements 
#winget install --id=OBSProject.OBSStudio  -e -h --accept-package-agreements --accept-source-agreements

# Game related software
winget install --id=Valve.Steam -e -h --accept-package-agreements --accept-source-agreements
winget install --id=EpicGames.EpicGamesLauncher -e -h --accept-package-agreements --accept-source-agreements
winget install --id=Discord.Discord -e -h --accept-package-agreements --accept-source-agreements