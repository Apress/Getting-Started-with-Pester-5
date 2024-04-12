Describe "Using TestDrive" {
    BeforeEach {
        # Explicitly create the TestDrive directory
        New-Item -Path TestDrive:\myDir -ItemType Directory #-Force
        New-Item -Path TestDrive:\myDir\file.txt -ItemType File  # Create the file
    }

    It "Creates a temporary file and writes content" {
        Set-Content -Path TestDrive:\myDir\file.txt -Value "Hello, TestDrive!"

        $fileContent = Get-Content -Path TestDrive:\myDir\file.txt
        $fileContent | Should -Be "Hello, TestDrive!"        
    }
} 
