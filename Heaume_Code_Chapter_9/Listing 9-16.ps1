Function Get-User {
    param (
        [string]$username
    )

    if ($username -eq 'admin') {
        return 'Admin User'
    } else {
        return 'Regular User'
    }
}
