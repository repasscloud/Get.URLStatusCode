param ($fullPath)
#$fullPath = 'C:\Program Files\WindowsPowerShell\Modules\Get.URLStatusCode'
if (-not $fullPath) {
    $fullpath = $env:PSModulePath -split ":(?!\\)|;|," |
        Where-Object {$_ -notlike ([System.Environment]::GetFolderPath("UserProfile")+"*") -and $_ -notlike "$pshome*"} |
            Select-Object -First 1
            $fullPath = Join-Path $fullPath -ChildPath "Get.URLStatusCode"
}
Push-location $PSScriptRoot
Robocopy . $fullPath /mir /XD .devbots .github .git Tests bin lib Private /XF AppVeyor.yml .gitignore build.ps1 install.ps1 deploy.ps1 CODE-OF-CONDUCT.md CONTRIBUTING.md test.ps1
Pop-Location