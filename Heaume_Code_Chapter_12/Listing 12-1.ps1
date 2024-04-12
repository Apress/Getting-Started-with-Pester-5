Function ConvertTo-Uppercase {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [string]$InputString
    )
    Process {
        $InputString.ToUpper()
    }
}
