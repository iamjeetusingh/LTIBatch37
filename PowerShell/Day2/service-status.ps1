cls

$nam = Read-Host "Enter service name to check status" 

$svc = Get-Service -Name $nam

# $svc.Name

# $svc.Status

Write-Host "$($svc.name) is $($svc.status)"