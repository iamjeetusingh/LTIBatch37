<# operators

-eq
-ne
-lt
-le
-gt
-ge
-and
-or

#>

"hello" -eq "HELLO"
"hello" -ceq "HELLO"

$a = 10
$a -eq 100

# task - list all the running services
Get-Service

Get-Command -Noun object

Get-Service | Where-Object {$_.Status -eq  "Running"} | Select-Object Name, DisplayName

Get-Service | `
Where-Object {$_.Status -eq  "Running"} | `
Select-Object Name, DisplayName