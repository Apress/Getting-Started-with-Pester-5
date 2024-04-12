function Invoke-Wonder {
    param (
        [string]$Action
    )

    # Perform some marvelous action based on the input
    # For the sake of this example, let's simplify it
    switch ($Action) {
        "Sparkle" { 'Success' }
        "Thunder" { 'Powerful' }
        default { 'Unknown' }
    }
}


BeforeAll {
    # Set up your environment or import necessary modules
}

Describe "PowerShell Wonders" {
    It "Performs Marvellous Feats" -ForEach @(
        @{ Action = "Sparkle"; Expected = 'Success'}
        @{ Action = "Thunder"; Expected = 'Powerful'}
    ) {
        Invoke-Wonder -Action $Action | Should -Be $Expected

	   Write-host “Run phase complete”
    }
}

Write-Host "Discovery phase complete”
