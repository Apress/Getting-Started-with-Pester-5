Describe My-AmazingFunction {

    it "Should return the variable if it exists" {
        # Arrange
        mock Get-EnvironmentVariable { "SampleValue"}

        # Act
        $expected = My-AmazingFunction -EnvVar "SampleValue"
        
        # Assert
        $expected | should -be "SampleValue"
    }

    it "Should return the False if the variable does not exist" {
        # Arrange
        mock Get-EnvironmentVariable { }

        # Act
        $expected = My-AmazingFunction -EnvVar "SampleValue"

        # Assert
        $expected | should -beFalse
    }
}
