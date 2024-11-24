# foreach loop
cls
$arr2 = @(1..20)

foreach( $a in  $arr2 ) {
       $a
       #sleep 1
}


# example 2
cls
$websites = @("google.com", "ltimindtree.com","youtube.com","amazon.in")
foreach($w  in  $websites){

    Test-Connection $w -Count 1 -ErrorAction SilentlyContinue
}

# task - list all pingable websites in green and non-pingable in red color.
cls
$websites = @("google.com", "ltimindtree.com","youtube.com","amazon.in")
foreach($w  in  $websites){
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$w" -ForegroundColor Green
    }else{
        Write-Host "$w" -ForegroundColor red
    }
}

# task - access all the site names from a text file and ping them.
cls
# notepad.exe sites.txt
$websites = Get-Content "E:\PowerShell\batch37\Day3\sites.txt"
foreach($w  in  $websites){
    if(Test-Connection $w -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$w" -ForegroundColor Green
    }else{
        Write-Host "$w" -ForegroundColor red
    }
}


# task - list all the running services names in green color 
# and stopped in red color.
cls
foreach ($svc in Get-Service){
    if( $svc.status -eq "Running"){
        Write-Host $svc -ForegroundColor Green
    }else{
        Write-Host $svc -ForegroundColor Red
    }
}