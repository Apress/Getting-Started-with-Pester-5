Describe "Get-Greeting" {
    context "testing" {

        BeforeAll {
            $myvar = 5 
        }
       
        It "Returns expected output" {  

            # Act
            $expected = Get-Greeting -Name 'Owen'
            
            # Assert 
            $expected | Should -Be $myvar            
            
        }         

        
        it "will pass" {
            
            # Assert
            $myvar | should -be 5
            
        }        
    }
}
