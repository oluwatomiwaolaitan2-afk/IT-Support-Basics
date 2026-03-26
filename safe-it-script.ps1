# IT Support Setup Script

Write-Host "Starting IT Setup..." -ForegroundColor Green

# Set Computer Name
Rename-Computer -NewName "OFFICE-PC-01" -Force

# Create New User
$Password = ConvertTo-SecureString "Password123" -AsPlainText -Force
New-LocalUser "staffuser" -Password $Password -FullName "Staff User" -Description "Office User"
Add-LocalGroupMember -Group "Users" -Member "staffuser"

# Install Google Chrome (if winget is available)
winget install --id Google.Chrome -e --silent

# Enable Firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# Set Timezone
Set-TimeZone -Name "W. Central Africa Standard Time"

Write-Host "Setup Completed Successfully!" -ForegroundColor Green
