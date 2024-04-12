Describe "Get-Greeting" {
    context "testing" {
       
        It "Returns expected output" {

            # Arrange            
            $myvar = 5         

            # Act
            $expected = Get-Greeting -Name 'Owen'
            
            # Assert 
            $expected | Should -Be $myvar            
            
        }         

        
        it "will fail" {
            
            # Assert
            $myvar | should -be 5
            
         }
    }
}
