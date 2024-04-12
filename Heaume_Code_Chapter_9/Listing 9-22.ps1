Function Get-ADUserDisabledState {
    param (
        [bool]$State = $false
    )
    
    $users = @(Get-Aduser -Filter {Enabled -eq $State} -SearchBase = 'OU=Users,OU=MyCompany,DC=OH,DC-Local')

    if ($state -eq $false) {
        Write-Host "There are $($users.Count) disabled user accounts:"
        $users.name
    } else {
        Write-Host "There are $($users.Count) enabled user accounts:"
        $users.name
    }
}
