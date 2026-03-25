Powershell
# ==========================================
# Advanced IT Support Troubleshooting Script
# Author: Oluwatomiwa Olaitan
# ==========================================

Write-Host "Starting Advanced System Check..." -ForegroundColor Green

# 1. System Information
Write-Host "`n--- SYSTEM INFORMATION ---" -ForegroundColor Yellow
Get-ComputerInfo | Select-Object CsName, WindowsVersion, OsArchitecture

# 2. CPU & Memory Usage
Write-Host "`n--- CPU & MEMORY ---" -ForegroundColor Yellow
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory

# 3. Disk Space
Write-Host "`n--- DISK USAGE ---" -ForegroundColor Yellow
Get-PSDrive -PSProvider FileSystem

# 4. Network Check
Write-Host "`n--- NETWORK CHECK ---" -ForegroundColor Yellow
Test-Connection google.com -Count 2

# 5. Running Processes
Write-Host "`n--- TOP RUNNING PROCESSES ---" -ForegroundColor Yellow
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

# 6. Windows Services (Running)
Write-Host "`n--- RUNNING SERVICES ---" -ForegroundColor Yellow
Get-Service | Where-Object {$_.Status -eq "Running"}

Write-Host "`nSystem Check Completed!" -ForegroundColor Green
