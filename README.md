# Get.URLStatusCode

![AppVeyor](https://ci.appveyor.com/api/projects/status/github/repasscloud/Get.URLStatusCode?branch=master&svg=true) [![GitHub issues](https://img.shields.io/github/issues/repasscloud/Get.URLStatusCode)](https://github.com/repasscloud/Get.URLStatusCode/issues) [![GitHub license](https://img.shields.io/github/license/repasscloud/Get.URLStatusCode)](https://github.com/repasscloud/Get.URLStatusCode/blob/master/LICENSE) ![GitHub top language](https://img.shields.io/github/languages/top/repasscloud/Get.URLStatusCode)

PowerShell Module that will return the HTTP Status Code of any provided URL without the need for a Try/Catch statement.

## Installation

```powershell
Install-Module -Name Get.URLStatusCode
```

## Commands

| Name | Synopsis |
| :-- | :-- |
| `Get-URLStatusCode -URL <URI Resource>` | Retrieves HTTP Response code for `<URI Resource>` |