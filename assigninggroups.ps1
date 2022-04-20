#Defining AzureGroup ObjectId's
$UPNObjectID = (Get-AzureADUser -ObjectId $userUPN).ObjectId
$EmptyGroupID = ""
$Mission = (Get-AzureADGroup -SearchString "Mission Restoration").ObjectId
$Sales = (Get-AzureADGroup -SearchString "Sales").ObjectId
$BSch = (Get-AzureADGroup -SearchString "BuildSchedule").ObjectId
$Canvas = (Get-AzureADGroup -SearchString "Canvassing").ObjectId
$InsideSales = (Get-AzureADGroup -SearchString "Inside Sales").ObjectId
$SolarKnights = (Get-AzureADGroup -SearchString "SOLAR KNIGHTS").ObjectId
$Sunlink = (Get-AzureAdGroup -SearchString "Sunlink Energy").ObjectId

#Assigning Groups
Add-AzureADGroupMember -ObjectId $InsideSales -RefObjectId $UPNObjectID



