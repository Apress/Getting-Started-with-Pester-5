beforeall {
    . "$psscriptroot\Functions.ps1"
 } 

Describe 'Testing Compliment-Yourself and Compliment-Owen function' { 

    It 'Compliments yourself with "You are doing great!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 1 }
        $result = Compliment-Yourself
        $result | Should -Be 'You are doing great!'       
    }

    It 'Compliments yourself with "Keep up the good work!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 2 }
        $result = Compliment-Yourself
        $result | Should -Be 'Keep up the good work!'       
    }

    It 'Compliments Owen with "Well done Owen, you are doing great!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 1 }
        $result = Compliment-Owen
        $result | Should -Be 'Well done Owen, you are doing great!'       
    }  
        
    It 'Compliments Owen with "Hey Owen! Keep up the good work!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 2 }
        $result = Compliment-Owen
        $result | Should -Be 'Hey Owen! Keep up the good work!'       
    }

    It 'Compliments Owen with "This is a great chapter!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 3 }
        $result = Compliment-Owen
        $result | Should -Be 'This is a great chapter!'       
    }  
} 
