﻿beforeall {
    . "$psscriptroot\Functions.ps1"
 } 

Describe 'Testing Compliment-Yourself and Compliment-Owen' { 
    It 'Compliments yourself with "You are doing great!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 1 }
        $result = Compliment-Yourself
        $result | Should -Be 'You are doing great!'
       
    }

    It 'Compliments Owen with "Well done Owen, you are doing great!"' {
        # Mocking the random number to ensure the specific branch is tested
        Mock Get-Random { 1 }
        $result = Compliment-Owen
        $result | Should -Be 'Well done Owen, you are doing great!'       
    }
} 
