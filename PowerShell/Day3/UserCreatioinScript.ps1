cls
# creating OU
$ouname = "ltib371"
#Get-ADOrganizationalUnit -Filter 'Name -like $ouname' | Format-Table Name, DistinguishedName

if(Get-ADOrganizationalUnit -Filter 'Name -like $ouname'){
    Write-Host "OU already exists" -ForegroundColor Green
}else{
    Write-Host "OU does not exists, creating one" -ForegroundColor cyan
    New-ADOrganizationalUnit -Name $ouname -Path "DC=training,DC=com" -ProtectedFromAccidentalDeletion $false
}



# creating sales users from sales1 to sales50
$Users = @(1..500)
#$OU = "OU=$ouname,DC=training,DC=com"
foreach ($User in $Users)
{
	$Username = "ltim"+$User
	$Firstname = $Username
	$OU = "OU=$ouname,DC=training,DC=com"
	$Password = "Pas#w0rd12345"
	$email = $Username +"@training.com"

	if (Get-ADUser -F {SamAccountName -eq $Username})
	{
		Write-Warning "A user account with username $Username already exist."
	}
	else
	{
		New-ADUser -Name $Firstname `
        -UserPrincipalName $email `
        -SamAccountName $Username `
	    -Path $OU `
	    -EmailAddress $email `
	    -AccountPassword (convertto-securestring $Password -AsPlainText -Force) `
        -ChangePasswordAtLogon $false `
        -Enabled $True   
        
        Write-Host "$($Username) created successfully"  
	}
}
