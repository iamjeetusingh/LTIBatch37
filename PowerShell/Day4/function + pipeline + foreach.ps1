# functions + pipeline + foreach

function get-ping{
    param([string]$sites)

        if(Test-Connection $sites -Count 1 -ErrorAction SilentlyContinue){
            Write-Host "$sites" -ForegroundColor Green
        }else{
            Write-Host "$sites" -ForegroundColor red
        }
}
cls
$websites = Get-Content "E:\PowerShell\batch37\Day3\sites.txt"
$websites | foreach{
    get-ping -sites $_
}