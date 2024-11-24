<# 
CIM
    - Common Information Model
    - open source
    - it fetches the information of local machine & remote machine too.
    - information like:
        - hardware 
        - software
        - service
        - process
        - firmware
WMI
    - Windows Management Instrumentation
    - it fetches the information of local machine & remote machine too.
    - information like:
        - hardware 
        - software
        - service
        - process
        - firmware

Cmdlet:  # Get-WMIObject
Alias:   # gwmi
Classes:
    - bios
    - operatingsystem
    - physicalmemory
    - logicaldisk
    - computersystem

#>

# listing all classes
Get-WmiObject -List 
Get-WmiObject -List | Measure-Object

# listing Win32_ classes
Get-WmiObject -List | Where-Object {$_.Name -match '^Win32_'}
Get-WmiObject -List | Where-Object {$_.Name -match '^Win32_'} | Measure-Object


# WMI Classes
Get-WmiObject -Class Win32_bios
Get-WmiObject -Class Win32_computersystem
Get-WmiObject -Class Win32_operatingsystem
Get-WmiObject -Class Win32_logicaldisk 
Get-WmiObject -Class Win32_logicaldisk | Format-Table
Get-WmiObject -Class Win32_NetworkAdapter | Format-Table


# notepad.exe comp.txt
$file = Get-Content .\comp.txt
Get-WmiObject -Class Win32_computersystem -ComputerName $file | Format-Table

# Getting member info
Get-WmiObject -Class Win32_logicaldisk  |  Get-Member

# listing selective objects
Get-WmiObject -Class Win32_logicaldisk -ComputerName $file | Select-Object PScomputerName, DeviceID, FreeSpace, Size

