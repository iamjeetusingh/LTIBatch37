# Task - list top 10 unique processes (Name, CPU(in Descending order)) 
# with high CPU utilization
cls 
Get-Process | `
Sort-Object CPU -Descending | `
Select-Object Name, `
@{l = "CPU(in%)" ; e={[math]::Round(($_.CPU),2)}} `
-First 10 -Unique