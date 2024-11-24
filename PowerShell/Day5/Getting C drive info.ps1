# task - to fetch the C drive size of all machines within the environment.
cls

$file = Get-Content .\comp.txt

Get-WmiObject -Class Win32_logicaldisk -ComputerName $file | `
Where-Object DeviceID -eq "C:" | `
Select-Object PScomputerName, DeviceID, `
@{l="FreeSpace(inGBS)" ; e = {[math]::Round((($_.FreeSpace)/1GB),2)}}, `
@{l="Size(inGBS)" ; e = {[math]::Round((($_.Size)/1GB),2)}} | `
Format-Table