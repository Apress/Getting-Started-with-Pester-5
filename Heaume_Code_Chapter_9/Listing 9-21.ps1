Describe "Get-Greeting" {    

    Context "When the name is Owen" {      
        It "Should say hello to Owen" { 

            # Arrange
            Mock Write-Host -ParameterFilter { $Object -eq "Hello Owen, I hope you are having a good day." } -Verifiable

            # Act
            Get-Greeting -Name "Owen"                

            # Assert
            Should -InvokeVerifiable
        }
    }

    Context "When the name is not Owen" { 
          
        It "Should say hello to the name" { 
            
            # Arrange       
            Mock Write-Warning { } -ParameterFilter { $Message -eq "Oh, I see you are not Owen" } -Verifiable
            Mock Write-Host { } -ParameterFilter { $Object -eq "Hello $Name, how are you?" -and $ForegroundColor -eq "Cyan" } -Verifiable
            $Name = 'Bob'

            # Act
            Get-Greeting -Name $Name 

            # Assert
            Should -InvokeVerifiable

        }
    }
}

