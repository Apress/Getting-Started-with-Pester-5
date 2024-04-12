$config = New-PesterConfiguration
$config.Run.Path = ".\src\Functions.tests.ps1"
$config.CodeCoverage.Enabled = $true

Invoke-Pester -Configuration $config
