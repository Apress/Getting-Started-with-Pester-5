BeforeAll {
    . $PSScriptRoot/ConvertTo-Uppercase.ps1
}

Describe "ConvertTo-Uppercase" {
    Context "When converting a string to uppercase" {
        It "Should convert <Text> to <ExpectedResult>" -foreach @(
            @{ Text = "hello world"; ExpectedResult = "HELLO WORLD" }
            @{ Text = "Hello World!!"; ExpectedResult = "HELLO WORLD!!" }
            @{ Text = "HELLO WORLD"; ExpectedResult = "HELLO WORLD" }
            @{ Text = "HelLo WOrlD"; ExpectedResult = "HELLO WORLD" }
        ) {
            $result = ConvertTo-Uppercase -InputString $Text

            $result | Should -Be $expectedResult
        }
    }
}
