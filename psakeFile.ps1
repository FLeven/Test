properties {
    # Set this to $true to create a module with a monolithic PSM1
    $PSBPreference.Build.CompileModule = $false
    $PSBPreference.Help.DefaultLocale = 'en-US'
    $PSBPreference.Test.CodeCoverage.Enabled  = $true
    $PSBPreference.Test.CodeCoverage.Threshold = .00
    $PSBPreference.Test.CodeCoverage.Files = @('..\Test\Private\*.ps1', '..\Test\Public\*.ps1')
    $PSBPreference.Test.CodeCoverage.OutputFormat = 'JaCoCo'
}

task Default -depends Test

task Test -FromModule PowerShellBuild -minimumVersion '0.6.1'
