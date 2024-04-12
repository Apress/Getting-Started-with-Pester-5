BeforeAll {
    Import-Module "$PSScriptRoot\<moduleName>.psm1" -Force -PassThru
}

Describe "Get-Uppercase" {

    It "should return uppercase text" {
        InModuleScope  'moduleName' {
            # Arrange        
            mock ConvertTo-UpperCase -MockWith {"HELLO"}   

            # Act
            $expected = Get-UpperCase -Text "hello"

            # Assert
            $expected | should -be "HELLO"
            should -invoke ConvertTo-UpperCase -times 1 -exactly       
        }
    }
}
