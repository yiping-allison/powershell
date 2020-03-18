# PowerShell Scripts

Collection of PowerShell scripts and functions

---

## Module Setup

Clone or download the folder `CodingTools` and place it in either:

1. `C:\Users\%username%\Documents\WindowsPowerShell\Modules\`
2. `C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules`

Before using the module, import the module using: `Import-Module CodingTools`.

You can check if the module is accessible by using `Get-Module -ListAvailable`. Correctly installed modules should show up on the list, along with a list of exported commands.

To check all available commands of the module, use:
`Get-Command -Module CodingTools`

## Documentation

| Go Command Type           | PowerShell Command    | Documentation                            |
|:--------------------------|:----------------------|:----------------------------------------:|
| Go Coverage Testing       | `GoCover`             | [:book:](Documentation/go_cover.md)      |
| Go Testing                | `GoTest`              | [:book:](Documentation/go_test.md)       |
