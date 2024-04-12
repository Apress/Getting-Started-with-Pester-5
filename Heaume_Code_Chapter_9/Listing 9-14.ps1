function Get-Path {
    param (
        [parameter (Mandatory = $true,ValueFromPipeline = $true)]
        [string]$Path
    )

    process {
        if (test-path $path) {
            write-host "The path exists"
            return $true
        } else {
            write-host "The path does not exist"
            return $false
        }
    }
}
