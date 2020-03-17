# PowerShell Scripts

Collection of PowerShell scripts and functions

## Contents

* [Module Setup](#module-setup)
* [GoCover](#go-cover)

---

### Module Setup

Clone or download the folder `CodingTools` and place it in either:

1. `C:\Users\%username%\Documents\WindowsPowerShell\Modules\`
2. `C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules`

Before using the module, import the module using: `Import-Module CodingTools`.

You can check if the module is accessible by using `Get-Module -ListAvailable`. Correctly installed modules should show up on the list, along with a list of exported commands.

To check all available commands of the module, use:
`Get-Command -Module CodingTools`

### Go Cover

`GoCover` is used as a PowerShell tool for [go coverage testing](https://blog.golang.org/cover).

This is a translated, PowerShell script of [Dave Cheney's bash script](https://twitter.com/davecheney/status/1002384377802735617).

**Usage:** `GoCover`

`GoCover` will run the coverage tool and display the output using the `-func` flag. Like with Cheney's
bash script, the generated results file will be deleted automatically.
