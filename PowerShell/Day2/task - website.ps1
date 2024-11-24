<#
Task - ask user for a website name and check if its pinging or not.
#>
cls
$site = Read-Host "Enter site to check"
if(Test-Connection $site -Count 1 -ErrorAction SilentlyContinue){
    Write-Host "$site is pinging" -ForegroundColor Green
}else{
    Write-Host "$site is NOT pinging" -ForegroundColor Red
}