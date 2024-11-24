# write a function that accepts username and prints "Hello <yourname>"
function Get-Message {
    param(
        [Parameter(Mandatory=$true,HelpMessage="Write your name")][string]$name
    )
    Write-Host "Hello $name"
}
cls
#Get-Message -name "Jeetu"
#Get-Message -name "Anushko"
#Get-Message -name "Shreya"
Get-Message