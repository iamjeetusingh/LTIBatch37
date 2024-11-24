# XML

# creating XML and storing it in a file.
Get-Service -DisplayName A* | `
Select-Object Name, DisplayName, Status, StartType | `
Export-Clixml services.xml

# getting the data
[xml]$xmldata = Get-Content "E:\PowerShell\batch37\day4\books.xml"
$xmldata.GetType()         # getting the data type of the variable

$xmldata.catalog.book | Format-Table
$xmldata.catalog.book | Select-Object id, author
$xmldata.catalog.book | Select-Object id, author, price
$xmldata.catalog.book | Select-Object id, author, price, genre
$xmldata.catalog.book | Select-Object id, author, title, price, genre | Format-Table

# list book title with genre name only.
$xmldata.catalog.book | Where-Object { $_.genre -eq "Horror" } | Select-Object id, title

# list boold id, price & title using genre.
$xmldata.catalog.book | Where-Object { $_.genre -match "fant" } | Select-Object id, title, price

$xmldata.catalog.book | Where-Object { $_.title -like "xml*" } | Select-Object id, title, price

$xmldata.catalog.book | Where-Object { $_.genre -ne "Fantasy" } | Select-Object id, title, price, genre

$xmldata.catalog.book | Where-Object { ($_.genre -ne "Fantasy") -and ($_.genre -ne "Horror") } | `
Select-Object id, title, price, genre