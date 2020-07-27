$PSD1=$PSScriptRoot+'\Get.URLStatusCode.psd1'
if (Test-Path -Path $PSD1) {
    Remove-Item -Path $PSD1 -Confirm:$false -Force
}

$Description=@"
PowerShell Module that will return the HTTP Status Code of any provided URL without the need for a Try/Catch statement.

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

"@

$FileList=@(
    'Private',
    'Public',
    '.\LICENSE',
    '.\README.md',
    '.\Get.URLStatusCode.psm1',
    '.\CHANGELOG.md'
)

$Author='Danijel-James Wynyard'
$CompanyName='RePass Cloud Pty Ltd'
$Copyright='Copyright '+[char]0x00A9+' 2020 RePass Cloud Pty Ltd'

$Tags=@('http','url','uri','statuscode','status','200','code','https')
$ProjectUri='https://github.com/repasscloud/Get.URLStatusCode'
$LicenseUri='https://github.com/repasscloud/Get.URLStatusCode/blob/master/LICENSE'
$ReleaseNotes=@"
Initial release to PSModule.
"@
$FunctionsToExport=@('Get-URLStatusCode')

$HelpInfoURI='https://raw.githubusercontent.com/repasscloud/Get.URLStatusCode/master/README.md'

$ModuleVersion=$Env:APPVEYOR_BUILD_VERSION

#New-ModuleManifest -Path "${PSScriptRoot}\Get-URLStatusCode.psd1" `
New-ModuleManifest -Path $PSD1 `
  -Author $Author `
  -CompanyName $CompanyName `
  -Copyright $Copyright `
  -RootModule 'Get.URLStatusCode.psm1' `
  -ModuleVersion $ModuleVersion `
  -Description $Description `
  -PowerShellVersion '5.1' `
  -ProcessorArchitecture None `
  -FileList $FileList `
  -Tags $Tags `
  -ProjectUri $ProjectUri `
  -LicenseUri $LicenseUri `
  -ReleaseNotes $ReleaseNotes `
  -FunctionsToExport $FunctionsToExport `
  -HelpInfoUri $HelpInfoURI

if ($Env:APPVEYOR_BUILD_NUMBER) {
    $CurrentBuild=$Env:APPVEYOR_BUILD_NUMBER
}

# Update the PS Scripts with the version and build
$OldVersionString='  Version:';
$NewVersionString="  Version:        2.0.2.{0}" -f $CurrentBuild
$LastUpdated='  Last Updated:';
$LatestUpdated="  Last Updated:   $((Get-Date).ToString('yyyy-MM-dd'))";
Get-ChildItem -Path "$Env:APPVEYOR_BUILD_FOLDER\public" -Filter "*.ps1" | ForEach-Object {
    $ManifestContent = Get-Content -Path $_.FullName -Raw;
    $ManifestContent = $ManifestContent -replace $OldVersionString,$NewVersionString;
    $ManifestContent = $ManifestContent -replace $LastUpdated,$LatestUpdated;
    Set-Content -Path $_.FullName -Value $ManifestContent -Force;
}