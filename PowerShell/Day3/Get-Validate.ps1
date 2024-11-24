function Get-Validate{
[cmdletbinding()]
param(
    [ValidateSet("LTIMindtree","LTI","LTIM")][string]$word
)

Write-Host "Hello $word"

}

cls
Get-Validate -word "LTIMindtree"
Get-Validate -word "LTI"
Get-Validate -word "LTIM"
Get-Validate -word "Accenture"