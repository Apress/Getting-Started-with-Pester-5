Describe "Get-Boolean" {
    It "returns true" {
        # Arrange         # Act
        $expectedResult = Get-Boolean -myBoolean True
                        # Assert
        $expectedResult | Should -BeTrue
    }
}
