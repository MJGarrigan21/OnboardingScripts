#Assign NEW Groups to User]

Connect-AzureAD

#User Variables
$UserUPN = "bjesser@missionrestoration.com"
$UPNObjectID = (Get-AzureADUser -ObjectId $UserUPN).ObjectId

#Group Variables
$Mission = (Get-AzureADGroup -SearchString "Mission Restoration").ObjectId
$Sales = (Get-AzureADGroup -SearchString "Sales").ObjectId
$BSch = (Get-AzureADGroup -SearchString "BuildSchedule").ObjectId
$Canvas = (Get-AzureADGroup -SearchString "Canvassing").ObjectId
$InsideSales = (Get-AzureADGroup -SearchString "Inside Sales").ObjectId
$SolarKnights = (Get-AzureADGroup -SearchString "SOLAR KNIGHTS").ObjectId
$Sunlink = (Get-AzureAdGroup -SearchString "Sunlink Energy").ObjectId

#Assign
Add-AzureADGroupMember -ObjectId $Sales -RefObjectId $UPNObjectID
Add-AzureADGroupMember -ObjectId $BSch -RefObjectId $UPNObjectID