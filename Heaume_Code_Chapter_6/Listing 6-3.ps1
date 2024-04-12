beforeall {
    $result = 5
}


Describe "Unexpected Results" {

    It "Adds numbers" -ForEach @(
        @{ Action = "Add one"; Expected = ($result + 1)}
        @{ Action = "Add two"; Expected = ($result +2)}
    ) {
        write-host "running test Five $action = $expected"
    }
}
