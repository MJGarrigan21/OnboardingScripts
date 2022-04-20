Connect-AzureAD


#Defining password
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Mission1465"
$PasswordProfile.ForceChangePasswordNextLogin = $true


#User Variables
$userUPN = "cmccracken@missionrestoration.com"
$DisplayName = "Casey McCracken"
$GivenName = "Casey"
$Surname = "McCracken"
$MailNickName = "cmccracken"
$Department = "Marketing"
$JobTitle = "Inside Sales Rep"
$UL = "US" #Usage Location
$CompanyName = "Mission Restoration"


#User Creation. Will not assign a license, manager, or groups
New-AzureADUser -DisplayName $DisplayName -GivenName $GivenName -Surname $Surname -UserPrincipalName $userUPN -MailNickName $MailNickName `
 -PasswordProfile $PasswordProfile -UsageLocation $UL -CompanyName $CompanyName -Department $Department -JobTitle $JobTitle -AccountEnabled $true

