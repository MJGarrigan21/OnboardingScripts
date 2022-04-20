#License Variables
$Basic = "O365_BUSINESS_ESSENTIALS"
$Standard = "O365_BUSINESS_PREMIUM"
$License = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense #defining a variable as an azure license
$License.SkuId = (Get-AzureADSubscribedSku | Where-Object -Property SkuPartNumber `
-Value $Basic -EQ).SkuID #assigning a basic license to the variable defined above. change -value to $Standard for SLicense
$LicensesToAssign = New-Object -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$LicensesToAssign.AddLicenses = $License



#Assigning license
Set-AzureADUserLicense -ObjectId $userUPN -AssignedLicenses $LicensesToAssign


