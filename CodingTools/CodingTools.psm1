# Author: BornToBeRoot (https://github.com/BornToBeRoot)

Get-ChildItem -Path "$PSScriptRoot\Functions" -Recurse | Where-Object {$_.Name.EndsWith(".ps1")} | ForEach-Object {. $_.FullName}