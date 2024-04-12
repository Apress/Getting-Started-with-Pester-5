Describe "Using TestDrive" {
    BeforeEach {
        New-Item -Path TestDrive:\myDir -ItemType Directory
    }

    It "Creates a temporary file" {
        # Your file creation code here
    }
} 
