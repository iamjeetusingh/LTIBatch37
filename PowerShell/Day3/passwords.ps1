$passwd = Read-Host "Enter ur pwd"
$passwd

$pwd2 = Get-Credential
$pwd2

$pwd3 = Get-Credential -UserName training\jeetu  -Message "Type only ur PWD"
$pwd3