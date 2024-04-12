Describe Get-Boolean {
    It "Should contain the correct parameters" {
        Get-Command Get-Boolean | Should -HaveParameter "myBoolean"
    }
}
