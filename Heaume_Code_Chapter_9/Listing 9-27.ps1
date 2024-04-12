BeforeAll {
	Import-Module "$PSScriptRoot\<moduleName>.psm1" -Force -PassThru	
}

Describe "Get-Uppercase" {
    It "should return uppercase text" {
        # Arrange        
        mock ConvertTo-Uppercase -MockWith {"HELLO"} -ModuleName moduleName         

        # Act
        $expected = Get-UpperCase -Text "hello"

        # Assert
        $expected | should -be "HELLO"
        should -invoke ConvertTo-UpperCase -times 1 -exactly -ModuleName moduleName        
    }
} 
