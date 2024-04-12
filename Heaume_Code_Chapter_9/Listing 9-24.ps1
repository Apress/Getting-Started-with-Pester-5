Describe "Get-ADUserDisabledState" {
    beforeAll {
        Function Get-ADUser {}

        Mock Write-Host {}
    }

    Context "When the user is disabled" {
        It "Should return the disabled user" {
            # Arrange
            mock Get-ADUser {
                [PSCustomObject]@{
                    Name = "Test User1"
                    Enabled = $false
                }
            }

            # Act
            $expected = Get-ADUserDisabledState -State $false 
            
            # Assert
            $expected | Should -Be "Test User1"
        }
    }

    Context "When the user is enabled" {
        It "Should return the enabled user" {
            # Arrange
            mock Get-ADUser {
                [PSCustomObject]@{
                    Name = "Test User2"
                    Enabled = $True
                }
            }

            # Act
            $expected = Get-ADUserDisabledState -State $true 

            #Assert
            $expected | Should -Be "Test User2"
        }
    }
}
