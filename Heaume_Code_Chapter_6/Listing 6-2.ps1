BeforeDiscovery {
    # Code intentionally placed outside Pester-controlled blocks to run during Discovery
    $scriptsToTest = Get-ChildItem -Path $PSScriptRoot -Filter '*.ps1' -Recurse
}

Describe "Script Validation - <_>" -ForEach $scriptsToTest {
    Context "Code Structure" {
        It "Follows Best Practices" {
            # Test the script for adherence to coding standards
            # Example: Ensure proper indentation, naming conventions, etc.
        }

        It "Contains Proper Comments" {
            # Test the script for the presence of meaningful comments
            # Example: Ensure the inclusion of helpful comments for clarity
        }
    }
}
