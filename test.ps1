Write-Verbose "Importing Module: Get.URLStatusCode"
Import-Module -Name Get.URLStatusCode

Write-Verbose "Testing PS Module"
[String]$URL="https://www.google.com.au"
if ((Get-UrlStatusCode -URL $URL) -eq 200) {
    Write-Output "Success!"
} else {
    Write-Output "Fail! :("
    Stop-Computer -ComputerName $Env:COMPUTERNAME -Confirm:$false -Force
}

Write-Host "Unloading Module: Get.URLStatusCode"
Remove-Module -Name Get.URLStatusCode -Force -Confirm:$false
