# Error Handling

$Error
$Error.Count
$Error | Out-File error.txt
notepad.exe .\error.txt


$ErrorActionPreference
cls
Get-Date
hostname
hahaha
Get-Date


$ErrorActionPreference = "SilentlyContinue"
$ErrorActionPreference
cls
Get-Date
hostname
hahaha
Get-Date

$ErrorActionPreference = "stop"
cls
$ErrorActionPreference
Get-Date
hostname
hahaha
Get-Date

$ErrorActionPreference = "inquire"
cls
$ErrorActionPreference
Get-Date
hostname
hahaha
Get-Date


$ErrorActionPreference = "Continue"