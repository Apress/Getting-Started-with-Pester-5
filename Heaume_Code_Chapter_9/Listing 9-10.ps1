Function Get-EnvironmentVariable {
    [cmdletbinding()]

    param (
        [string]$Variable
    )      
    
    $envVar =  [Environment]::GetEnvironmentVariable($Variable)

    if (-not ($envVar)) {
        Write-Host "$Variable not found"
        return 1
    } else {
        return $envvar
    }
}
