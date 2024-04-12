Describe "Get-ThingToDo" {
    it "Should return True if Type is 'Social'" {

        Mock Invoke-RestMethod {
            Import-Clixml "C:\ohtemp\Response.xml"
        }              

        $Expected = Get-ThingToDo

        $Expected | should -BeTrue
    }
}
