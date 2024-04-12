Describe "Get-Boolean" {
    It "returns true" {
        # Arrange
        $expectedResult = Get-Boolean -myBoolean True
        
        $expectedResult | Should -BeTrue
    }
}
