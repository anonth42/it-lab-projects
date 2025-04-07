. .\lab-config.ps1

Install-WindowsFeature -Name DHCP -IncludeManagementTools

Add-DhcpServerInDC -DnsName "dc01.$DomainName" -IPAddress $DNSServer

Add-DhcpServerv4Scope -Name "LabScope" `
  -StartRange $ScopeStartIP -EndRange $ScopeEndIP `
  -SubnetMask $SubnetMask -State Active

Set-DhcpServerv4OptionValue -ScopeId "192.168.56.0" `
  -DnsServer $DNSServer `
  -DnsDomain $DomainName `
  -Router $RouterIP
