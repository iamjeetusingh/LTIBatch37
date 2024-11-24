Get-Process | Get-Member

Get-Process | Select-Object ProcessName, ID

Test-Connection google.com 
Test-Connection google.com | Select-Object Destination, IPV4Address
Test-Connection google.com | Select-Object Address, IPV4Address
Test-Connection google.com | Get-Member