$config = New-PesterConfiguration
$config.Run.Path = ".\src\Functions.tests.ps1"
$config.CodeCoverage.Enabled = $true
$config.CodeCoverage.CoveragePercentTarget = 90
$config.Output.Verbosity = "Detailed"

Invoke-Pester -Configuration $config
