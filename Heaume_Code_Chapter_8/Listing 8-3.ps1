Describe "Tagged Tests"  {
    it "will not be skipped" {
        $true | should -BeTrue
    }

    it "will be skipped" -Skip {
        $true | should -BeTrue
    }

    it "will also not be skipped" {        
        $true | should -BeTrue
    } 
} 
