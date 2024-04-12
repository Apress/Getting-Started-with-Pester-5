Describe "Get-Path" {
    BeforeAll {
        Mock Write-Host
    }

    Context "When sending a path" {
        It "Returns True if the path is valid" {
            # Arrange
            $path = "C:\I\Exist"
            Mock test-path {$true}

            # Act
            $expected = Test-Path -Path $path 

            # Assert
            $expected | Should -BeTrue
            Should -invoke Test-path -times 1 -Exactly
        }

        It "Returns False if the path is not valid" {
            # Arrange
            $path = "C:\I\Do\Not\Exist"
            Mock test-path {$false}

            # Act
            $expected = Test-Path -Path $path 

            # Assert
            $expected | Should -BeFalse
            Should -invoke Test-path -times 1 -Exactly
        }
    }

    context "when sending via the pipeline" {
        It "should call the mock the correct number of times" {
            # Arrange
            Mock test-path {$true}

            # Act
            "c:\Exists", "c:\AlsoExists" | Get-Path 

            # Assert            
            Should -Invoke Test-path -times 2 -Exactly
        }
    }
}
