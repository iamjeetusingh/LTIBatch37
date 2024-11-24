<#
    Ask user to input a service name (say BITS) and check it the service is 
    running or stopped. 

    if the service is running, then ask user to 
        1. stop the service
        2. exit (no changes)

    if the service is stopped, then ask user to 
        1. start the service.
        2. exit ( no changes)

#>
cls
$sname = Read-Host "Enter Service name to check: "
$svc = Get-Service -Name $sname
if( $svc.Status -eq "Running" ){
    Write-Host "$($svc.name) is $($svc.status)" -ForegroundColor Green
    $ans = Read-Host "Do you want to STOP the service (y | n)"
    switch ($ans){
        y{ 
            Stop-Service -Name $sname
            Write-Host "Current status: " (Get-Service -Name $sname).Status
         }
        n{ Write-Host "Quitting console..."
            sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}else{
     Write-Host "$($svc.name) is $($svc.status)" -ForegroundColor Red
    $ans = Read-Host "Do you want to START the service (y | n)"
    switch ($ans){
        y{ 
            Start-Service -Name $sname
            Write-Host "Current status: " (Get-Service -Name $sname).Status
         }
        n{ Write-Host "Quitting console..."
            sleep 2}
        default{Write-Warning "Invalid Selection"}
    }
}