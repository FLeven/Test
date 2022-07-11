properties {
    # Set this to $true to create a module with a monolithic PSM1
    $configuration.Run.PassThru            = $true
    $PSBPreference.Build.CompileModule = $false
    $PSBPreference.Help.DefaultLocale = 'en-US'
    $PSBPreference.Test.OutputFile = 'out/testResults.xml'
    $PSBPreference.Test.CodeCoverage.Enabled  = $true
    $PSBPreference.Test.CodeCoverage.OutputFileFormat = 'JaCoCo'
    $PSBPreference.Test.CodeCoverage.Threshold = .00
    $PSBPreference.Test.CodeCoverage.Files = @('..\Test\Private\*.ps1', '..\Test\Public\*.ps1')
}

task Default -depends Test

task Test -FromModule PowerShellBuild -minimumVersion '0.6.1'
