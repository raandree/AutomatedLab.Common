@{

    RootModule             = 'AutomatedLab.Common.psm1'

    ModuleVersion          = '1.0'

    GUID                   = '554685d3-5c61-4080-afd6-1dd3d4d7a261'

    Author                 = 'Raimund Andree, Per Pedersen, Jan-Hendrik Peters'

    CompanyName            = 'AutomatedLab Team'

    Copyright              = '(c) 2025 AutomatedLab Team. All rights reserved.'

    Description            = 'The module collects all helper functions used in but not limited to AutomatedLab'

    PowerShellVersion      = '5.1'

    DotNetFrameworkVersion = '4.0'

    RequiredModules        = 'newtonsoft.json', 'PSFileTransfer'

    FunctionsToExport      = @()

    VariablesToExport      = @()

    AliasesToExport        = '??'

    DscResourcesToExport   = @()

    CompatiblePSEditions   = @('Desktop', 'Core')

    PrivateData            = @{

        PSData = @{

            Tags         = @(
                'LabAutomation'
                'AutomatedLab'
                'Networking'
                'PKI'
                'DesiredStateConfiguration'
                'DSC'
            )

            LicenseUri   = 'https://github.com/AutomatedLab/AutomatedLab.Common/blob/master/LICENSE'

            ProjectUri   = 'https://github.com/AutomatedLab/AutomatedLab.Common/'

            IconUri      = 'https://raw.githubusercontent.com/AutomatedLab/AutomatedLab/develop/Automated-Lab_icon256.png'

            ReleaseNotes = ''

            Prerelease   = ''

        }

    }

}
