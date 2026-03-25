powershell
# ==========================================
# Network Diagnostics Script
# Author: Oluwatomiwa Olaitan
# ==========================================

Write-Host "Starting Network Diagnostics..." -ForegroundColor Green

# Check Internet Connection
Write-Host "`nChecking Internet Connection..." -ForegroundColor Yellow
Test-Connection google.com -Count 4

# Show IP Configuration
Write-Host "`nDisplaying IP Configuration..." -ForegroundColor Yellow
ipconfig

# Check DNS Resolution
Write-Host "`nChecking DNS..." -ForegroundColor Yellow
nslookup google.com

# Show Network Routes
Write-Host "`nDisplaying Network Routes..." -ForegroundColor Yellow
route print

Write-Host "`nNetwork Diagnostics Completed!" -ForegroundColor Green
