Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "DHCP"} | Select-Object IPAddress

(Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "DHCP"}).IPAddress