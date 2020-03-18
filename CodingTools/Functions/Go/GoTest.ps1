Function GoTest {
	<#
	.SYNOPSIS
		Color-coding go test results

	.DESCRIPTION
		GoTest will run `go test` and colorize the output
		for easier reading.
		Details:
			This is a Powershell implementation of
			go_test() {
  				go test $* | sed ''/PASS/s//$(printf "\033[32mPASS\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | sed ''/FAIL/s//$(printf "\033[31mFAIL\033[0m")/'' | GREP_COLOR="01;33" egrep --color=always '\s*[a-zA-Z0-9\-_.]+[:][0-9]+[:]|^'
			}
			Author: Jon Calhoun

	.EXAMPLE
		GoTest
	
	.EXAMPLE
		GoTest -CO "TestName -v"

	.EXAMPLE
		GoTest -CO "-v"
	
	.FUNCTIONALITY
		Run go test tool and color test output
	
	.NOTES
		Name: GoTest
		Author: Yiping (Allison) Su
		Date Created: 17 March 2020
	#>

	[CmdletBinding()]
	param(
		[Parameter( Mandatory = $false,
		ParameterSetName = "CO" )]
		[String]
		$CommandOptions
	)

	Begin {
		if ($CommandOptions) {
			$test = "go test $CommandOptions" | Invoke-Expression
		} else {
			$test = "go test" | Invoke-Expression
		}
	}

	Process {
		$test | Format-Color @{'PASS' = 'Green'; 'FAIL' = 'red'; '.go:' = 'yellow'}
	}
}

function Format-Color([hashtable] $Colors = @{}, [switch] $SimpleMatch) {
	<#
	.NOTES
		Author: https://www.bgreco.net/powershell/
	#>
	$lines = ($input | Out-String) -replace "`r", "" -split "`n"
	foreach($line in $lines) {
		$color = ''
		foreach($pattern in $Colors.Keys){
			if(!$SimpleMatch -and $line -match $pattern) { $color = $Colors[$pattern] }
			elseif ($SimpleMatch -and $line -like $pattern) { $color = $Colors[$pattern] }
		}
		if($color) {
			Write-Host -ForegroundColor $color $line
		} else {
			Write-Host $line
		}
	}
}
