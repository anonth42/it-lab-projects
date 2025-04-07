# lab-config.ps1
# Define environment-wide variables

$DomainName         = "company.local"
$DomainNetBIOS      = "COMPANY"
$AdminPassword      = ConvertTo-SecureString "Comp@nyDC2025!" -AsPlainText -Force
$UserPassword       = ConvertTo-SecureString "LabUser2025!" -AsPlainText -Force

$ScopeStartIP       = "192.168.56.100"
$ScopeEndIP         = "192.168.56.150"
$SubnetMask         = "255.255.255.0"
$RouterIP           = "192.168.56.1"
$DNSServer          = "192.168.56.10"
