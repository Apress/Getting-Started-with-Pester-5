$config = New-PesterConfiguration
$config.CodeCoverage.Enabled = $true
$config.CodeCoverage.CoveragePercentTarget = 90 
$config.Output.Verbosity = "Detailed"
$config.CodeCoverage.Path = ".\src"

Invoke-Pester -Configuration $config 
