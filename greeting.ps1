$message = Get-Content -Path "greeting.txt"

# Display each line
Write-Host "`n=== Message from file ===" -ForegroundColor Green
foreach ($line in $message) {
    Write-Host $line -ForegroundColor Cyan
}

# Or read the entire file as single string
$fullMessage = Get-Content -Path "greeting.txt" -Raw
Write-Host "`n=== Full message ===" -ForegroundColor Yellow
Write-Host $fullMessage -ForegroundColor White

# Read file with custom encoding
$utf8Message = Get-Content -Path "greeting.txt" -Encoding UTF8
Write-Host "`n=== UTF-8 encoded ===" -ForegroundColor Magenta
Write-Host $utf8Message[0] -ForegroundColor White
