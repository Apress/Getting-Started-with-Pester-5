BeforeAll {
	Import-Module "$PSScriptRoot\Mock_module01.psm1" -Force -PassThru	
}

Describe "Get-Uppercase" {
    It "should return uppercase text" {
        
        mock ConvertTo-Uppercase -MockWith {"HELLO"}        

        $expected = Get-UpperCase -Text "hello"

        $expected | should -be "HELLO"     
        
    }
}
