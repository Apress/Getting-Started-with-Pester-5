Describe "Get-Boolean" {
    it "returns true" {
        $expectedResult = Get-Boolean -myBoolean True

        $expectedResult | should -BeTrue
    }

    it "returns false" {
        $expectedResult = Get-Boolean -myBoolean False

        $expectedResult | should -BeFalse
    }
}