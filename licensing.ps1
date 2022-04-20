#License Assignment
. .\onboardingscript.p1


$Basic = "O365_BUSINESS_ESSENTIALS"
$Standard = "O365_BUSINESS_STANDARD"
$License = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
$License.SkuId = (Get-AzureADSubscribedSku | Where-Object -Property SkuPartNumber `
-Value $Basic -EQ).SkuId
$LicensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$LicensesToAssign.AddLicenses = $License

Set-AzureADUserLicense -ObjectId $userUPN -AssignedLicenses $LicensesToAssign

