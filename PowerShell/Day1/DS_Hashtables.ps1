<#
    Hashtable = key-value pair

#>

$ht1 = @{}
$ht1.GetType()

# unordered hashtable
$ht2 = @{"Name"="Jeetu" ; "Client" = "LTIMindtree" ; "Location" = "BBRS"}
$ht2

# ordered hashtable
$ht3 = [ordered]@{"Name"="Jeetu" ; "Client" = "LTIMindtree" ; "Location" = "BBRS"}
$ht3