$tenantId = Read-Host "Enter Tenant ID"
$clientId = Read-Host "Enter Client ID"
$clientSecret = Read-Host "Enter Client Secret"

az login --service-principal --username $clientId --password $clientSecret --tenant $tenantId

az keyvault create --resource-group "youtube" --name "kv1youtube321"
