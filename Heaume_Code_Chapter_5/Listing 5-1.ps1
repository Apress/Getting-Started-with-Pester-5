function Remove-Files {

    param (
        [ValidateSet ('txt', 'log', 'tmp')]
        [string]$FileType,

        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    switch ($FileType) {        
        'txt' { Remove-Item -Path $Path\*.txt -Force }
        'log' { Remove-Item -Path $Path\*.log -Force }
        'tmp' { Remove-Item -Path $Path\*.tmp -Force }
    }
} 
