Function Get-Greeting {
    param (
        [string]$Name
    )

    if ($Name -eq "Owen") {
        Write-Host "Hello Owen, I hope you are having a good day." -ForegroundColor Green      
    } else {
        write-Warning "Oh, I see you are not Owen"
        Write-Host "Hello $Name, how are you?" -ForegroundColor Cyan
    }
}
