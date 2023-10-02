Install-Module Microsoft.Graph.Authentication
Import-Module Microsoft.Graph.Authentication

Connect-MgGraph -Scope User.ReadWrite.All

Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/v1.0/users"