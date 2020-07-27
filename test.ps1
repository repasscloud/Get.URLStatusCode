Write-Verbose "Importing Module: Get.URLStatusCode"
Import-Module -Name Get.URLStatusCode

Write-Verbose "Testing PS Module"
[String]$URL="https://www.google.com.au"
if ((Get-UrlStatusCode -URL $URL) -eq 200) {
    Write-Output "Success!"
    Write-Host "Build Number: " -ForegroundColor Yellow -NoNewLine
    Write-Host $Env:APPVEYOR_BUILD_NUMBER
    Write-Host "Build ID: " -ForegroundColor Yellow -NoNewLine
    Write-Host $env:APPVEYOR_BUILD_ID
    Write-Host "Build Version: " -ForegroundColor Yellow -NoNewLine
    Write-Host $Env:APPVEYOR_BUILD_VERSION
    Write-Host "Repo Commit: " -ForegroundColor Yellow -NoNewLine
    Write-Host $Env:APPVEYOR_REPO_COMMIT
    Write-Host "Repo Branch: " -ForegroundColor Yellow -NoNewLine
    Write-Host $Env:APPVEYOR_REPO_BRANCH
    Write-Host "Job Number: " -ForegroundColor Yellow -NoNewLine
    Write-Host $Env:APPVEYOR_JOB_NUMBER
} else {
    Write-Output "Fail! :("
    Stop-Computer -ComputerName $Env:COMPUTERNAME -Confirm:$false -Force
}

Write-Host "Unloading Module: Get.URLStatusCode"
Remove-Module -Name Get.URLStatusCode -Force -Confirm:$false
