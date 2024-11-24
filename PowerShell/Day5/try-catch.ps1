# example 1
cls
$one=1
$zero=0
try{
    $one/$zero
}
catch {
    "something else went wrong!!!"
}

# example 2
cls
$one=1
$zero=0
try{
 $one/$zero
}
catch [System.DivideByZeroException]{
"divide by zero error"
}
catch {
"something else went wrong!!!"
}
