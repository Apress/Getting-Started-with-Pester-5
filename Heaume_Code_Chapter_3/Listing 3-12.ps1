BeforeAll {
    $moduleName = 'yourModuleName'
    Get-Module -Name $moduleName -All | Remove-Module -Force
    $module = Get-Module -Name $moduleName -ListAvailable
    Import-Module -Name $module -Force
}


Describe "A function in the module" {
    It "tests something" {
        # test code
    }
}
