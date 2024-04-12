function Invoke-FileOperation {
    param (
        [string] $filePath
    )

    # Check if the file exists using Test-Path
    if (Test-Path -Path $filePath) {

        # File exists, perform processing
        Write-Host "Processing file: $filePath"

        # Additional processing logic here

        return $true

    } else {
        # File does not exist, handle accordingly
        Write-Host "File not found: $filePath"

        # Additional handling for missing files

        return $false
    }
} 
