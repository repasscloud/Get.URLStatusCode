#
# Module manifest for module 'Get.URLStatusCode'
#
# Generated by: Danijel-James Wynyard
#
# Generated on: 26/07/2020
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Get.URLStatusCode.psm1'

# Version number of this module.
ModuleVersion = '2.2.0.23'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '520cf415-a90d-48df-9b1d-94d50c624aaf'

# Author of this module
Author = 'Danijel-James Wynyard'

# Company or vendor of this module
CompanyName = 'RePass Cloud Pty Ltd'

# Copyright statement for this module
Copyright = 'Copyright © 2020 RePass Cloud Pty Ltd'

# Description of the functionality provided by this module
Description = 'PowerShell Module that will return the HTTP Status Code of any provided URL without the need for a Try/Catch statement.

Example 1 - Return HTTP Status Code of given url:
  Get-URLStatusCode -Url https://www.google.com/

Example 2 - Switch statement using HTTP Status Code:
  Switch (Get-URLStatusCode -Url https://www.google.com/) {
      200 {
          Write-Output "Website is up and reachable!"
      }
      Default {
          Write-Output "Website is not reachable or down!"
      }
  }
'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
ProcessorArchitecture = 'None'

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-URLStatusCode'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = 'Private', 'Public', '.\LICENSE', 'README.md', 'Get.URLStatusCode.psm1', 
               'Get.URLStatusCode.psd1', '.\CHANGELOG.md'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'http', 'url', 'uri', 'statuscode', 'status', '200', 'code', 'https'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/repasscloud/Get.URLStatusCode/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/repasscloud/Get.URLStatusCode'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Initial release to PSModule.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://raw.githubusercontent.com/repasscloud/Get.URLStatusCode/master/README.md'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

