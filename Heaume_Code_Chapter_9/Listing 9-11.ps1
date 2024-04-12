Function My-AmazingFunction {
    param (
        [string]$EnvVar
    )

    if ($EnvVar) {
        $result = [Environment]::GetEnvironmentVariable($Variable)
        return $result
    } else {
        Write-Output "You didn't want to get the environment variable"
        return $false
    }
}
