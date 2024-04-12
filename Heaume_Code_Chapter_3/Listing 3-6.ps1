Describe "Get-Boolean" {
    It "returns true" {
        # Arrange         # Act
        $expectedResult = Get-Boolean -myBoolean True
        
        $expectedResult | Should -BeTrue
    }
}
