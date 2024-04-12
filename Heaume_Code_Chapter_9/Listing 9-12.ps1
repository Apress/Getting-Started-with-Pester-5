Function My-AmazingFunction {
    param (
        [string]$EnvVar
    )

    $result = Get-EnvironmentVariable -Variable $EnvVar
    
    if ($result -ne 1) {
        $result
    } else {
        Write-Host "You didn't want to get the environment variable"
        return $false
    }
}
