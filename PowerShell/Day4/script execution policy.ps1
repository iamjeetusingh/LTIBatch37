<# 

Script execution
    - either you will be allowed to run the script or denied.

ways to execute a script:
    1. local - infront of the system
    2. remote - different location

To check the current execution policy:
    # Get-ExecutionPolicy

Execution policy
    - EP is of 4 types:
        1. Unrestricted
            - it will allow local and remote user to run ANY script.
            - the most unsecured policy, not to be used in production.

        2. Restricted
            - it will NOT allow local or remote user to run ANY script.

        3. RemoteSigned
            - local user is not required to run script with Digital Certificate, but
            - remote users must have a Digital Certificate binded with the script.

        4. AllSigned
            - both local & remote users must have Digital Certificate.



How to create a Digital Certificate?
    - makecert.exe (depricated)
    - IIS web server
    - Linux --> openssl
    - New-SelfSignedCertificate (V5.0)
 
to change the ExecutionPolicy: --> as administrator
    # Set-ExecutionPolicy <policy-name>

to create a digitally signed script:
    - create a script                      --> save it also.
    - create a certificate                 --> New-SelfSignedCertificate
    - export the certificate               --> cmdlet, GUI
    - import/install the certificate       --> cmdlet, GUI
    - bind the certificate with the script.--> Set-AuthenticodeSignature
#>

# 1. create a script
    # path --> "E:\PowerShell\batch37\Day4\myscript.ps1"

# 2. create a certificate
New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=demoCert01" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

# listing the cert
Get-ChildItem Cert:\CurrentUser\My

# cmdlets for the certificate
Get-Command *pfx*

# export the cert
# Export-PfxCertificate
# Get-Help Export-PfxCertificate -Online
# Win+R --> Certmgr.msc ->

# import/install the certificate
# Import-PfxCertificate
# to import, go to the location and install the cert by double-clicking on it.

# binding the certificate with the script
$file = "E:\PowerShell\batch37\Day4\myscript.ps1"
$cert = Get-ChildItem Cert:\CurrentUser\My\DDE1F0F76764252587FD053A797FE65318987D42
Set-AuthenticodeSignature -Certificate $cert -FilePath $file


Get-ExecutionPolicy