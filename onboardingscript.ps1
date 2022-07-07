Connect-AzureAD


#Defining password
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = ""
$PasswordProfile.ForceChangePasswordNextLogin = $true


#User Variables
$userUPN = ""
$DisplayName = ""
$GivenName = ""
$Surname = ""
$MailNickName = ""
$Department = ""
$JobTitle = ""
$UL = "US" #Usage Location
$CompanyName = ""


#User Creation. Will not assign a license, manager, or groups
New-AzureADUser -DisplayName $DisplayName -GivenName $GivenName -Surname $Surname -UserPrincipalName $userUPN -MailNickName $MailNickName `
 -PasswordProfile $PasswordProfile -UsageLocation $UL -CompanyName $CompanyName -Department $Department -JobTitle $JobTitle -AccountEnabled $true

