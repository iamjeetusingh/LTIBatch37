cls
Write-Host "Hello Batch 37.1"


$name = Read-Host "Enter username: "

Write-Host "Welcome Mr. " -NoNewline
Write-Host $name -ForegroundColor Yellow -BackgroundColor Black