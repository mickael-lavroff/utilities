# A simple start to Windows 11

## Description

The purpose of this project is to help install and setup all software automatically with a minimal amount of interactions from the user when a fresh installation of Windows 11 is done.

## Getting Started

### Prerequisites

* Windows 11
* Winget
* Administrator privileges
* Internet access

### Preparing

1. Download all scripts from https://github.com/mickael-lavroff/utilities in folder of your choice
1. Set the ExecutionPolicy accordingly using PowerShell as administrator (see [Help section](#help))

### Running 

1. Open a PowerShell prompt **as administrator** *(I use Terminal)*
1. Run Configure-WindowsOptions.ps1 using the command `.\Configure-WindowsOptions.ps1`
    + *It's not mandatory, but you will need to reboot to take advantage of newly enabled feature Hyper-V and WSL*
1. Run Configure-WindowsOptions.ps1 using the command `.\Install-BaseSoftware.ps1`
1. Run Configure-OhMyPosh.ps1 using the command `.\Configure-OhMyPosh.ps1`
1. Run Configure-VScode.ps1 using the command `.\Configure-VScode.ps1`
1. Run Configure-OhMyPosh.ps1 using the command `.\Configure-OhMyPosh.ps1`
1. Run Configure-VScode.ps1 using the command `.\Configure-VScode.ps1`
1. Run Configure-Terminal.ps1 using the command `.\Configure-Terminal.ps1` 

## Help

To authorize running scripts from your computer, make sure the ExecutionPolicy is set to 'Bypass' or 'Unrestricted' using these following commands in a PowerShell prompt as running with Administrators privileges 
```
# To check current ExecutionPolicy settings
Get-ExecutionPolicy -list

# To set ExecutionPolicy setting to 'Bypass' for current user
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurentUser

# To set ExecutionPolicy setting to 'Unrestricted' for everyone
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

Some scripts may be dependant on the others, so make sure to run the steps in the sequential order as per instructed in the [Running section](#Running)
## Authors

 * [Mickael Lavroff](https://github.com/mickael-lavroff)

## Version History

* 0.1
    * Initial Release

## License

This project is licensed under the [Public Domain](https://en.wikipedia.org/wiki/Public_domain) License.

![Public domain logo from the Creative Commons Corporation](https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Public_Domain_Mark_button.svg/220px-Public_Domain_Mark_button.svg.png "Public Domain licence logo.")

## Acknowledgments

Thanks to the people and/or project :

* [Dominique Pizzie](https://gist.github.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc)
* [Scott Hanselman](https://www.youtube.com/watch?v=VT2L1SXFq9U)
* [oh-my-posh](https://github.com/jandedobbeleer/oh-my-posh)