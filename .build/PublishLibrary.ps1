param
(
    [Parameter()]
    [System.String]
    $ProjectName = (property ProjectName ''),

    [Parameter()]
    [System.String]
    $SourcePath = (property SourcePath ''),

    [Parameter()]
    [System.String]
    $OutputDirectory = (property OutputDirectory (Join-Path $BuildRoot 'output')),

    [Parameter()]
    [System.String]
    $BuiltModuleSubdirectory = (property BuiltModuleSubdirectory ''),

    [Parameter()]
    [System.Management.Automation.SwitchParameter]
    $VersionedOutputDirectory = (property VersionedOutputDirectory $true),

    [Parameter()]
    [System.String]
    $BuildModuleOutput = (property BuildModuleOutput (Join-Path $OutputDirectory $BuiltModuleSubdirectory)),

    [Parameter()]
    [System.String]
    $ReleaseNotesPath = (property ReleaseNotesPath (Join-Path $OutputDirectory 'ReleaseNotes.md')),

    [Parameter()]
    [System.String]
    $ModuleVersion = (property ModuleVersion ''),

    [Parameter()]
    [System.Collections.Hashtable]
    $BuildInfo = (property BuildInfo @{ })
)

task PublishLibrary {

    . Set-SamplerTaskVariable -AsNewBuild

    $version = $ModuleVersion.Split('+')[0].Split('-', 2)[0]
    $outputPath = Join-Path -Path $BuildModuleOutput -ChildPath $ProjectName
    $outputPath = Join-Path -Path $outputPath -ChildPath $version

    $projectPath = Join-Path $SourcePath -ChildPath 'library\Library.csproj' -Resolve -ErrorAction Stop

    $outputPath60 = Join-Path -Path $outputPath -ChildPath \lib\core
    dotnet build $projectPath -f net6.0 -o $outputPath60
    dotnet publish $ProjectPath -f net6.0 -o $outputPath60

    $outputPath462 = Join-Path -Path $outputPath -ChildPath \lib\full
    dotnet build $projectPath -f net6.0 -o $outputPath60
    dotnet publish $ProjectPath -f net462 -o $outputPath462
}
