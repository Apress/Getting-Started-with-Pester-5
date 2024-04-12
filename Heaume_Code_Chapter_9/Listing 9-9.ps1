Function Get-Error {
    try {
        $response = Invoke-WebRequest -Uri "https://fearthepanda.com/notexist" -Method get -ErrorAction stop
    } catch [system.net.webexception] {
        write-host "The error was $_"
        return 1
    }
}
