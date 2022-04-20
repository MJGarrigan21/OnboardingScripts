#Assign NEW Manager

Connect-AzureAD

$UserUPN = "bjesser@missionrestoration.com"
$UserObjectID = (Get-AzureADUser -ObjectId $UserUPN).ObjectId

$NewManUPN = "bphillips@Missionrestoration.com"
$ManObjectID = (Get-AzureADUser -ObjectId $NewManUPN).ObjectId

Set-AzureADUserManager -ObjectId $UserObjectID -RefObjectId $ManObjectID