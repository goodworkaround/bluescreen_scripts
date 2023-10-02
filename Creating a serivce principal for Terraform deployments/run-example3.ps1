$tenantId = Read-Host "Enter Tenant ID"
$clientId = Read-Host "Enter Client ID"
$clientSecret = Read-Host "Enter Client Secret"
$subscriptionId = Read-Host "Enter Subscription ID"

az login --service-principal --username $clientId --password $clientSecret --tenant $tenantId

terraform init
terraform apply --var subscription_id=$subscriptionId
