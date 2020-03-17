# PowerShell Scripts

Collection of PowerShell scripts and functions

## Contents

* [Module Setup](#module-setup)
* [GoCover](#go-cover)

---

### Module Setup

For now, since there's only one file in the module, you can just download the single file and place it within a folder
called `GoCover` in either:

1. `C:\Users\%username%\Documents\WindowsPowerShell\Modules\`
2. `C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules`

Before using the `GoCover` function, import the module using: `Import-Module GoCover`.

You can check if the module is accessible by using `Get-Module -ListAvailable`. Correctly installed modules should show up on the list,
along with a list of exported commands.

### Go Cover

`GoCover` is currently implemented as a standalone function part of a module for ease of access in PowerShell.

The command is used for [go coverage testing](https://blog.golang.org/cover).

This is a translated, PowerShell version of [Dave Cheney's bash script](https://twitter.com/davecheney/status/1002384377802735617).

**Usage:** `GoCover`


