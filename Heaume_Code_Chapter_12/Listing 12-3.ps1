function Get-FilePath {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string]$FilePath
    )

    Test-Path -Path $FilePath
}

function Remove-FilesSafely {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [string]$FilePath
    )

    if (Get-FilePath $FilePath) {
        Remove-Item -Path $FilePath -Force
    } else {
        Write-Warning "Invalid file path provided: $FilePath"
    }
}


Describe Remove-FilesSafely {
    Context "When removing files safely" {
        It "Should remove the file" {
            Mock Get-FilePath { $true }
            Mock Remove-Item { }

            Remove-FilesSafely -FilePath "C:\myFolder\file.tmp"

            Should -Invoke Get-FilePath -Exactly -Times 1
            Should -Invoke Remove-Item -Exactly -Times 1
        }
    }

    Context "If the path is invalid" {
        It "Should not remove the file" {
            Mock Get-FilePath { $false }
            Mock Remove-Item { }
            Mock Write-Warning { }

            Remove-FilesSafely -FilePath "C:\myFolder\file.tmp"

            Should -Invoke Get-FilePath -Exactly -Times 1
            Should -Invoke Remove-Item -Exactly -Times 0
            Should -Invoke Write-Warning -Exactly -Times 1
        }
    }
}
