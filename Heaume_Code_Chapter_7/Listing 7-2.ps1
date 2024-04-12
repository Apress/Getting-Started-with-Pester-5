Describe "Using TestDrive" {
    BeforeEach { 
        New-Item -Path TestDrive:\file.txt -ItemType File  # Create the file
    }

    It "Creates a temporary file and writes content" {
        Set-Content -Path TestDrive:\file.txt -Value "Hello, TestDrive!"

        $fileContent = Get-Content -Path TestDrive:\file.txt  # Use full path
        $fileContent | Should -Be "Hello, TestDrive!"
    }
} 
