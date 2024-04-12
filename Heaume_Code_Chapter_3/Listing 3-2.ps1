function Get-Boolean {
    param (
        [ValidateSet ('True','False')]
        $myBoolean
    )

    if ($myBoolean -eq 'True') {
        $true
    } else {
        $false
    }
}
