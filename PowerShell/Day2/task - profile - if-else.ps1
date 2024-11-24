<#
Task
-----
    go to documents folder and remove WindowsPowershell directory manually.
    write a PS script to create $PROFILE, if it doesn't exists. 
#>
cls
if( Test-Path $profile ){
    # if true, this will be executed
    Write-Host "Profile already exists.." -ForegroundColor Green

}else{
    # else, this will be executed
    Write-Host "Profile does not exists.." -ForegroundColor Red
    Write-Host "Creating PROFILE now..." -ForegroundColor Cyan
    sleep 2
    New-Item -Path $profile -ItemType File -Force
    Write-Host "Creation done..." -ForegroundColor Cyan
}

