Describe "Scope Test" { 
    AfterEach {
        # Code for setting up the stage
        Write-host "I run after each test"
    }

    It "test1" {
        
        Write-Host "Test1"
    }

    Context "The Context block" {        

        It "Test2" {
            
            Write-Host "Test2"
        }

        It "test3" {
            
            Write-Host "Test3"
        }
    }
}
