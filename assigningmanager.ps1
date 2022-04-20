#Defining manager variables
$ManagerUPN = "ebourgeois@missionrestoration.com"
$ManagerObjectId = (Get-AzureADUser -ObjectId $ManagerUPN).ObjectId


#Assigning manager
Set-AzureADUserManager -ObjectId $UPNObjectID -RefObjectId $ManagerObjectId