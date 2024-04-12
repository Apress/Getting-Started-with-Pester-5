BeforeEach {
    New-Item -Path TestDrive:\myDir -ItemType Directory -Force
    New-Item -Path TestDrive:\myDir\file.txt -ItemType File  # Create the file
} 
