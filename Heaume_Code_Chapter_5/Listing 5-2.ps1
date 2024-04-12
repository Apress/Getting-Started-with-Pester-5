Describe 'Remove-Files' {
    Context 'when removing files from the specified path' {
        It 'should remove all txt files' {
            Remove-Files -FileType 'txt' -Path 'C:\Temp'

            $files = Get-ChildItem -Path 'C:\Temp' -Filter '*.txt'  
            $files | Should -BeNullOrEmpty
        }

        it 'should remove all log files' {
            Remove-Files -FileType 'log' -Path 'C:\Temp'

            $files = Get-ChildItem -Path 'C:\Temp' -Filter '*.log'  
            $files | Should -BeNullOrEmpty
        }

        it 'should remove all tmp files' {
            Remove-Files -FileType 'tmp' -Path 'C:\Temp'

            $files = Get-ChildItem -Path 'C:\Temp' -Filter '*.tmp'  
            $files | Should -BeNullOrEmpty
        }
    }
} 
