$ObjectID = "34afb915-92e2-46f4-a9bf-7f993dd7c8c8"

Import-Module Microsoft.Graph.Authentication
Import-Module Microsoft.Graph.Applications
Connect-MgGraph -Scopes "Application.ReadWrite.All","AppRoleAssignment.ReadWrite.All"

$graph = Get-MgServicePrincipal -Filter "AppId eq '00000003-0000-0000-c000-000000000000'"

$role = $graph.AppRoles | ? Value -eq "Group.Read.All"
New-MgServicePrincipalAppRoleAssignment -ResourceId $graph.Id -PrincipalId $ObjectID -AppRoleId $role.id -ServicePrincipalId $graph.id

$role = $graph.AppRoles | ? Value -eq "User.Read.All"
New-MgServicePrincipalAppRoleAssignment -ResourceId $graph.Id -PrincipalId $ObjectID -AppRoleId $role.id -ServicePrincipalId $graph.id
