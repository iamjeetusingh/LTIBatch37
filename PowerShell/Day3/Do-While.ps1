# Do-While
cls
$array = @("item1", "item2", "item3")
$counter = 0;

do {
   $array[$counter]
   $counter += 1
   sleep 1
} while($counter -lt $array.length)