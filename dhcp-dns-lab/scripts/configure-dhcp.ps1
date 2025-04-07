# Install and configure DHCP role and create a basic scope
Import-Module ServerManager
Add-WindowsFeature -Name DHCP -IncludeManagementTools

# Authorize the DHCP server in Active Directory
Add-DhcpServerInDC -DnsName "dc01.company.local" -IPAddress 192.168.56.10

# Create a DHCP scope
Add-DhcpServerv4Scope -Name "LabScope" -StartRange 192.168.56.100 -EndRange 192.168.56.150 `
  -SubnetMask 255.255.255.0 -State Active -LeaseDuration ([TimeSpan]::FromDays(8))
