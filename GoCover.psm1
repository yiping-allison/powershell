Function GoCover {
	<#
	.SYNOPSIS
		Automate go cover tool command
	
	.DESCRIPTION
		Automate go cover tool command.
		Details:
			Powershell translation of the following bash shell command
			# Via https://twitter.com/davecheney/status/1002384377802735617
			go_cover() {
				local t=$(mktemp -t cover)
				go test $COVERFLAGS -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
			}
	
	.EXAMPLE
		GoCover

	.FUNCTIONALITY
		Go Cover Tool Command

	.NOTES
		Name: GoCover
		Author: Yiping (Allison) Su
		Date Created: 17 March 2020
	#>
	
	Begin {
		$tmp = New-TemporaryFile
	}

	Process {
		Try {
			"go test -coverprofile=$tmp" | Invoke-Expression
			"go tool cover -func=$tmp" | Invoke-Expression
		} Catch {
			Write-Error "Could not execute golang commands"
		}
	}

	End {
		Remove-Item $tmp.FullName -Force
	}
}
