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

Describe Get-Boolean {
    It " Should contain the correct parameters" {
        $expectedResult = Get-Boolean -myBoolean True

        $expectedResult | Should -BeOfType Bool
    }
}
