# PowerShell Functions For Coding Tools

Collection of PowerShell functions for coding whilst using commandline tools.

**Motivation:**

I enjoy coding in _Go_ and use Go's commandline tools quite often. I have been
watching Jon Calhoun's _Test With Go_ series recently and thought his shell recommendation for `go cover` chaining and `go test` colorization were extremely helpful.

Unfortunately, there was no PowerShell implementation, so I made my own!

_Note:_ If you're using Windows OS, you aren't strictly required to use PowerShell. Windows users
can still use bash equivalent scripts on [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or 3rd party bash implementations.

---

## Module Setup

Clone or download the folder `CodingTools` and place it in either:

1. `C:\Users\%username%\Documents\WindowsPowerShell\Modules`
2. `C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules`

Before using the module, import it using: `Import-Module CodingTools`.

You can check if the module is accessible by using `Get-Module -ListAvailable`. Correctly installed modules should show up here, along with a list of exported commands.

To check all available commands of the module, use:
`Get-Command -Module CodingTools`

## Documentation

### Golang

| Command Type              | PowerShell Command    | Summary                          | Documentation                         |
|:--------------------------|:----------------------|:---------------------------------|:-------------------------------------:|
| Go Coverage Testing       | `GoCover`             | Chain and auto-clean `go cover`  | [:book:](Documentation/go_cover.md)   |
| Go Testing                | `GoTest`              | Colorize `go test` output        | [:book:](Documentation/go_test.md)    |
