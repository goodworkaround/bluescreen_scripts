# Define variables
$tenantId = Read-Host "Enter Tenant ID"
$clientId = Read-Host "Enter Client ID"
$clientSecret = Read-Host "Enter Client Secret"

# Define API endpoint and parameters
$tokenEndpoint = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"
$tokenParams = @{
    grant_type    = "client_credentials"
    client_id     = $clientId
    client_secret = $clientSecret
    scope         = "https://graph.microsoft.com/.default"
}

# Get access token
$accessToken = Invoke-RestMethod -Method Post -Uri $tokenEndpoint -Body $tokenParams

# Output access token
Write-Output $accessToken.access_token

Invoke-RestMethod "https://graph.microsoft.com/v1.0/users" -Headers @{Authorization = "Bearer $($accessToken.access_token)"}
