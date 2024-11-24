# Switch statement
cls
$ans = Read-Host "
Select option from the following:
    1. check IP address
    2. ping Google.com
    3. List hostname
    4. display today's date & time.
    5. exit
"

switch( $ans ){
    1 { (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "DHCP"}).IPAddress }
    2 { Test-Connection google.com -Count 1 -ea SilentlyContinue }
    3 { HOSTNAME.EXE }
    4 { Get-Date }
    5 { break }
    default { Write-Warning "Invalid selection!!!" }
}

