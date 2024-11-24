<#
Task
write a powershell script that asks user to enter 2 numbers and show the addition of it.
#>
cls

[int]$a = Read-Host "enter 1st number"
[int]$b = Read-Host "Enter 2nd number"

Write-Host "Addition of $a & $b is $($a+$b)"
