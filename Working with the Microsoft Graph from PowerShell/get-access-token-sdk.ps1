# Import the Microsoft Graph SDK
Import-Module -Name Microsoft.Graph

# Set the client ID and client secret
$clientId = Read-Host -Prompt 'Enter the client ID'
$clientSecret = Read-Host -Prompt 'Enter the client secret'
$tenantId = Read-Host "Enter Tenant ID"

$cred = [PSCredential]::new($clientid, (convertto-securestring -asplaintext -force $clientSecret))
Connect-MgGraph -ClientSecretCredential $cred -TenantId $tenantId

Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/users"