Describe "Get-Greeting" {    

    Context "When the name is Owen" {      
        It "Should say hello to Owen" { 
            
            # Arrange
            Mock Write-Host { }            
            $Name = 'Owen'
            
            # Act
            Get-Greeting -Name $name                

            # Assert
            Should -Invoke Write-Host -ParameterFilter { $Object -eq "Hello Owen, I hope you are having a good day."  }
        }
    }

    Context "When the name is not Owen" { 
          
        It "Should say hello to the name" { 
            
            # Arrange       
            Mock Write-Host { }
            Mock Write-Warning { }
            $Name = 'Bob'

            # Act
            Get-Greeting -Name $Name 

            # Assert
            Should -Invoke Write-Host -ParameterFilter { $Object -eq "Hello $Name, how are you?" -and $ForegroundColor -eq "Cyan" }

        }
    }
}
