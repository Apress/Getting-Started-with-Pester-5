# Misplaced code outside Pester blocks
Write-Host "This code runs during Discovery but may lead to confusion."

Describe "PowerShell Wonders" {
    It "Performs Marvellous Feats" -ForEach @(
        @{ Action = "Sparkle"; Expected = 'Success'}
        @{ Action = "Thunder"; Expected = 'Powerful'}
    ) {
        Invoke-Wonder -Action $Action | Should -Be $Expected
    }
}

# More misplaced code outside Pester blocks
Write-Host "This code also runs during Discovery, potentially causing unexpected outcomes."

Write-Host "Discovery Phase Completed."
