New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=dummycert" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

#bind the certificate with the script.

Get-Help Set-AuthenticodeSignature -Examples

ls Cert:\CurrentUser\my\
$cert = ls Cert:\CurrentUser\my\A1866073A1B60C785AA841D4BCE691596EF1ED63
$file = "C:\Users\Jeetu\Desktop\2July-7July-LTI-PS\day_2\restrictedpolicyy.ps1"
Set-AuthenticodeSignature -FilePath $file -Certificate $cert 
