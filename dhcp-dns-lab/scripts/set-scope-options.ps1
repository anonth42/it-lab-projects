# Set DHCP options for the scope (DNS, router, domain name)
$ScopeId = "192.168.56.0"

Set-DhcpServerv4OptionValue -ScopeId $ScopeId `
  -DnsServer 192.168.56.10 `
  -DnsDomain "company.local" `
  -Router 192.168.56.1

# Optional: confirm options are applied
Get-DhcpServerv4OptionValue -ScopeId $ScopeId
