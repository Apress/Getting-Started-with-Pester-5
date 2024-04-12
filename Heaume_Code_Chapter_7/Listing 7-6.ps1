Describe "Using TestDrive" {
    BeforeEach {
        try {
            # Explicitly create the TestDrive directory
            New-Item -Path TestDrive:\myDir -ItemType Directory -Force -ErrorAction stop
            New-Item -Path TestDrive:\myDir\file.txt -ItemType File -ErrorAction stop  # Create the file
        } catch {
            Write-Error "Failed to create TestDrive directory or file: $($_.Exception.Message)"
            throw
        }
    }

    AfterEach {
        Remove-Item -Path TestDrive:\myDir -Recurse -Force -ErrorAction SilentlyContinue
    }

    It "Creates a temporary file and writes content" {
        Set-Content -Path TestDrive:\myDir\file.txt -Value "Hello, TestDrive!"

        $fileContent = Get-Content -Path TestDrive:\myDir\file.txt
        $fileContent | Should -Be "Hello, TestDrive!"
    }
} 
