#Assign NEW Manager

Connect-AzureAD

$UserUPN = ""
$UserObjectID = (Get-AzureADUser -ObjectId $UserUPN).ObjectId

$NewManUPN = ""
$ManObjectID = (Get-AzureADUser -ObjectId $NewManUPN).ObjectId

Set-AzureADUserManager -ObjectId $UserObjectID -RefObjectId $ManObjectID
