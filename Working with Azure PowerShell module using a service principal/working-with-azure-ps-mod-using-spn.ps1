$clientid = "2c66b1d0-2729-4c0a-bfff-e141e9e958b2"
$tenantid = "237098ae-0798-4cf9-a3a5-208374d2dcfd"
$clientsecret = read-host -AsSecureString

Clear-AzContext

$Credential = Get-Credential 
$Credential = [pscredential]::new($clientid, $clientsecret)
$Credential = (New-Object System.Management.Automation.PSCredential($clientid, $clientsecret))

Connect-AzAccount -ServicePrincipal -Tenant $tenantid -Credential $Credential
Get-AzSubscription