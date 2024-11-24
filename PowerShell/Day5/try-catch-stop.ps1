function get-ping{
param(
[string]$site
)
    try{
        Test-Connection $site -Count 1 -ErrorAction stop | `
        Select-Object Address, IPv4Address
    }catch{
        Write-Error $_
    }
}

cls
get-ping -site goo000000000000000000000000gle.com