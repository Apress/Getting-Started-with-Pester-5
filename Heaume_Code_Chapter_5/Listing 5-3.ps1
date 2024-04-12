Describe "Remove-Files" {
    Context "when removing files from the specified path" {
        It "should remove all the correct files" -foreach @(
                @{ FileType = 'txt'; Path = 'C:\Temp' }
                @{ FileType = 'log'; Path = 'C:\Temp' }
                @{ FileType = 'tmp'; Path = 'C:\Temp' }
            ) {            
            
            $files = Get-ChildItem -Path $path -Filter $filetype
            Remove-Files -FileType $filetype -Path $path
            
            $files | Should -BeNullOrEmpty
        }
    }
}  
