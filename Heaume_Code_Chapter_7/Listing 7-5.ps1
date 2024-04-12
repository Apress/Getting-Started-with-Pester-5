Describe "Using TestDrive" {
    BeforeEach {
        # Explicitly create the TestDrive directory
        New-Item -Path TestDrive:\myDir -ItemType Directory -Force
        $path = New-Item -Path TestDrive:\myDir\file.txt -ItemType File  # Create the file
    }

    It "Writes content to a temporary file" {
        Set-Content -Path $path -Value "Hello, TestDrive!"

        $fileContent = Get-Content -Path $path
        $fileContent | Should -Be "Hello, TestDrive!"
    }
}  
