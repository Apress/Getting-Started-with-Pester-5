BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe Get-Boolean {
    It " Should contain the correct parameters" {
        $expectedResult = Get-Boolean -myBoolean True

        $expectedResult | Should -BeOfType Bool
    }
}
