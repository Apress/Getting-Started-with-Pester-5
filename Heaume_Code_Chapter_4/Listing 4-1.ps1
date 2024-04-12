function Get-Greeting {
    param (
        [string]$Name
    )

    if ($name -eq "Owen") {
        write-host "Hello $name" -ForegroundColor green
        return 5
    } elseif ($name -eq "Judith") {
        write-host "Hello, Judith" -ForegroundColor Cyan
        return 6
    } else {
        write-host "Who are you?" -ForegroundColor Magenta
        return 7
    }    
}
