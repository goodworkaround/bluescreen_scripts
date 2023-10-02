$tenantId = Read-Host "Enter Tenant ID"
$clientId = Read-Host "Enter Client ID"
$clientSecret = Read-Host "Enter Client Secret"
$subscriptionId = Read-Host "Enter Subscription ID"

terraform init
terraform apply --var client_id=$clientId --var client_secret=$clientSecret --var tenant_id=$tenantId --var subscription_id=$subscriptionId
