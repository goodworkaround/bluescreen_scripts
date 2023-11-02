$clientid = Read-Host
$tenantid = Read-Host
$clientsecret = Read-Host

az account clear 
az login --tenant $tenantid --service-principal --username $clientid --password $clientsecret # --allow-no-subscriptions

az login --help