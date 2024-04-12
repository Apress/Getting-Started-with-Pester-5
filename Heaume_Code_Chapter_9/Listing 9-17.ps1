Describe Get-User {
    Context "When getting user information" {
        beforeall {
            mock Get-User {throw "Don't call Get-User for real" }
        }

        it "Should return Admin User for 'admin'" {
            # Arrange
            Mock Get-User {
                return 'Admin User'
            } -ParameterFilter { $username -eq 'admin' }

            # Act
            $result = Get-User -username 'admin'

            # Assert
            $result | Should -Be 'Admin User'
        }

        it "Should return Regular User for other usernames" {
            # Arrange
            Mock Get-User {
                return 'Regular User'
            } -ParameterFilter { $username -eq 'Fred' }

            # Act
            $result = Get-User -username 'Fred'

            # Assert
            $result | Should -Be 'Regular User'
        }
    }
}
