BeforeAll {
    . $PSCommandPath.Replace('.tests',"")
    Mock Write-Host
}

Describe "Invoke-FileOperation function" {
    Context "When the file exists" {     
        It "Should process the file" {
            Mock Test-Path { return $true }

            $result = Invoke-FileOperation -filePath "C:\sample.txt"
            $result | Should -BeTrue
        }
    }

    Context "When the file does not exist" { 
        It "Should handle the missing file" {
            Mock Test-Path { return $false }

            $result = Invoke-FileOperation -filePath "C:\nonexistent.txt"
            $result | Should -BeFalse
        }
    }
} 
