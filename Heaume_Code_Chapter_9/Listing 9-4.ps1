Describe 'Get-ServerInfo' {
    Context 'When given a valid CSV file' {        
        It 'Returns the correct number of servers' {
            #Arrange
            mock import-csv {
                ConvertFrom-Csv -InputObject @'
            'Name','OS',
            'Server1','Windows Server 2019 Standard'
            'Server2','Windows Server 2012 R2'

'@
        }

            #Act
            $expected = Get-ServerInfo
            
            #Assert
            $expected | Should -Be 2
        }
    }
}
