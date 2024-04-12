Describe 'Get-ServerInfo' {
    Context 'When given a valid CSV file' {        
        It 'Returns the correct number of servers' {
            #Arrange
            $MockedData = @(
                [PSCustomObject]@{
                    Name = 'Server1'
                    OS   = 'Windows Server 2019 Standard'
                };
                [PSCustomObject]@{
                    Name = 'Server2'
                    OS   = 'Windows Server 2012 R2'
                }
            )

            mock Import-Csv { $MockedData }

            #Act
            $expected = Get-ServerInfo
            
            #Assert
            $expected | Should -Be 2
        }
    }
} 
