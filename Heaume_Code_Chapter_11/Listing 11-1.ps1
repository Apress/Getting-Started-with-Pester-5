trigger:
- main

pool:
  vmImage: windows-latest

steps:
- task: PowerShell@2
  inputs:
    targetType: 'inline'
    script: |
      # Set the working directory to the folder containing Test.ps1
      Set-Location -Path "$(System.DefaultWorkingDirectory)/Chapter11"

      # Run the Test.ps1 script
      .\Test.ps1
  displayName: 'Run Pester Tests'

- task: PublishCodeCoverageResults@1
  inputs:
    codeCoverageTool: 'JaCoCo'
    summaryFileLocation: '$(System.DefaultWorkingDirectory)/Chapter11/coverage.xml'
    pathToSources: '$(System.DefaultWorkingDirectory)/Chapter11'  
  displayName: 'Publish Code Coverage Results'