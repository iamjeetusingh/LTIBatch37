cls
Get-Date
jeetu
hostname


$Error
$Error.Count
$Error[0]
hahaha
$Error[1]

$profile

<#
    $profile 
        - its the file that is loaded (if present) by default by powershell


#>

Test-Path $profile

# create PROFILE
New-Item -ItemType File -Path $profile -Force

notepad.exe  $profile