Describe "Get-Greeting" {
    context "testing" {
        
            $myvar = 5 
       
        It "will fail" {  

            # Act
            $expected = Get-Greeting -Name 'Owen'
            
            # Assert 
            $expected | Should -Be $myvar            
            
        }         

        
        it "will also fail" {
            
            # Assert
            $myvar | should -be 5
            
        }        
    }
}
