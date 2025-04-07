. .\lab-config.ps1

Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Install-ADDSForest `
  -DomainName $DomainName `
  -DomainNetBIOSName $DomainNetBIOS `
  -SafeModeAdministratorPassword $AdminPassword `
  -InstallDNS `
  -Force
