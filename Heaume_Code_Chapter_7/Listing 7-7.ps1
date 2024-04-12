Describe "Using TestRegistry" {
  BeforeEach {
    New-Item -Path "TestRegistry:\" -Name MyTestKey
  }

  It "Creates a registry key and sets a value" {      
    New-ItemProperty -Path "TestRegistry:\MyTestKey" -Name 'MyValue' -Value "Hello, TestRegistry!"

    $value = Get-ItemProperty -Path "TestRegistry:\MyTestKey" -Name 'MyValue' | select -ExpandProperty 'myvalue'
    $value | Should -Be "Hello, TestRegistry!"            
  }
}
