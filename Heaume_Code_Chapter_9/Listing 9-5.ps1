Describe 'My Pester test' {
    It 'does something wonderful' {
        #Arrange
        Mock Get-Module {
            @{ Version = '1.0.9'; Name = 'MyModule'}
            @{ Version = '1.0.5'; Name = 'MyModule'}
            @{ Version = '1.0.2'; Name = 'MyModule'}
        }

        # Act...

        # Assert...            
    }
} 
