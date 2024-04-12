Function ConvertTo-UpperCase {
    param (
        [string]$text
    ) 

    return $text.ToUpper()
}

Function Get-UpperCase {
    param (
        [string]$Text
    )

    return ConvertTo-UpperCase -text $Text
}

Export-ModuleMember -Function Get-UpperCase
