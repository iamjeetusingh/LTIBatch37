<# DSC
    - Desired State Configuration

config like:
    - firewall -> On
    - WinRM service -> On
    - BITS service -> Off
    - file: c:\jeetu.txt --> present
    - IIS web server --> ON

Mode of DSC:
    1. Push Mode
        - server will push updates to client
        - Advantage: easy to deploy
        - Disadvantage: if client is off/unreachable, updates will be missed.

    2. Pull Mode
        - client will PULL updates from server
        - Advantage: client will never miss any updates
        - Disadvantage: very complicated
    
#>

# DSC Push mode config
########################

# import the DSC module
Import-Module -Name PSDesiredStateConfiguration

# DSC push mode config for member machine
configuration my-services{
    Node member1 {
        service bits{
            Name = "BITS"
            State = "Running"
        }
    }
}

# generate the MOF file
my-services

# apply config
Start-DscConfiguration -Path .\my-services -Wait -Verbose

# testing the config
Test-DscConfiguration -CimSession member1