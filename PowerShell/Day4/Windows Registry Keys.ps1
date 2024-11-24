<# 
    Windows registry keys
        are the database for your OS.
#>

# HKCU - Hash Key CUrrent User
# HKLM - Hash Key Local Machine

# shows the PowerShell Drives
Get-PSDrive

# list registry provider
Get-PSDrive -PSProvider Registry

# to access the reg key of HKCU
Get-ChildItem  hkcu:\

# to create a registry folder
New-Item -Path hkcu:\  -Name "Harida" -Force

# creating reg key
New-ItemProperty -Path HKCU:\Harida  -Name "Batch371"  -Value "2nd last day of torture" -Force

# modify the reg key value
Set-ItemProperty -Path HKCU:\Harida  -Name "Batch371"  -Value "PowerShell Zindabad" -Force

# remove the key
Remove-ItemProperty -Path HKCU:\Harida -Name "Batch371" -Force

# remove the folder
Remove-Item -Path hkcu:\Harida -Force