docker compose up --build -d
Start-Sleep -Seconds 12
$url = (Invoke-RestMethod "http://localhost:4040/api/tunnels").tunnels[0].public_url
Write-Host "URL: $url" -ForegroundColor Cyan
Write-Host "Docs: $url/docs" -ForegroundColor Cyan
