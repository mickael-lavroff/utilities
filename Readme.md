# Project Title

A simple start to Windows 11

## Description

The purpose of this project is to help install and setup all software automatically with a minimal amount of interactions from the user when a fresh installation of Windows 11 is done.

## Getting Started

### Prerequisites

* Windows 11
* ExecutionPolicy allowing running scripts
* Administrator privileges

### Installing

* Download all scripts from https://github.com/mickael-lavroff/utilities
* Unzip archive if necessary
* Run the 

### Executing program

* How to run the program
* Step-by-step bullets
```
code blocks for commands
```

## Help

To authorize running scripts from your computer, make sure the ExecutionPolicy is set to 'Bypass' or 'Unrestricted'

To check current ExecutionPolicy settings
```
Get-ExecutionPolicy -list
```

To set ExecutionPolicy setting to 'Bypass' for current user
```
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurentUser
```

To set ExecutionPolicy setting to 'Unrestricted' for everyone
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

## Authors

Mickael Lavroff (https://github.com/mickael-lavroff)

## Version History

* 0.2
    * Various bug fixes and optimizations
    * See [commit change]() or See [release history]()
* 0.1
    * Initial Release

## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments

Thanks to
* [Dominique Pizzie](https://gist.github.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc)
* [Scott Hanselman](https://www.youtube.com/watch?v=VT2L1SXFq9U)
* [oh-my-posh](https://github.com/jandedobbeleer/oh-my-posh)