# list all the cmdlets that has object in it.
Get-Command -Noun object
Get-Command *-object

# creating a new object
$obj = New-Object psobject
$obj.GetType()                  # listing the type of object
$obj | Get-Member               # listing the default members for the object.

# add new member to the object.
Get-Command -Noun member        # list all the cmdlets with member
Add-Member -InputObject $obj -MemberType NoteProperty -Name "Name"  -Value "Prathiksha"
$obj | Get-Member

Add-Member -InputObject $obj -MemberType NoteProperty -Name "Progress"  -Value "Sleeping..."
$obj | Get-Member


# add multiple members to an object.
# create all the members using hashtable
$newobj = @{
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
    key4 = "value4"
    key5 = "value5"
}

# creating a new object
$obj2 = New-Object psobject -Property $newobj
$obj2 | Get-Member