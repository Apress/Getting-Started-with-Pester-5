function Get-ThingToDo {
    $result = Invoke-RestMethod -Method Get -Uri  "https://www.boredapi.com/api/activity"
    
    if ($result.type -eq "Social") {
        return $true
    } else {
        return $false
    }
}
