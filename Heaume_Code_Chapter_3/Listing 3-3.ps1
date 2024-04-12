Describe "Get-Boolean" {
    it "returns true" {
        $expectedResult = Get-Boolean -myBoolean True

        $expectedResult | should -BeTrue
    }
}