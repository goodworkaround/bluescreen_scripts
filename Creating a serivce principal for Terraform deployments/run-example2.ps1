$tenantId = Read-Host "Enter Tenant ID"
$clientId = Read-Host "Enter Client ID"
$clientSecret = Read-Host "Enter Client Secret"
$subscriptionId = Read-Host "Enter Subscription ID"

$ENV:ARM_CLIENT_ID = $clientId
$ENV:ARM_CLIENT_SECRET = $clientSecret
$ENV:ARM_TENANT_ID = $tenantId

terraform init
terraform apply --var subscription_id=$subscriptionId
