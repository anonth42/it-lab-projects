. .\lab-config.ps1

New-ADUser -Name "John Smith" -GivenName "John" -Surname "Smith" `
  -SamAccountName "jsmith" -UserPrincipalName "jsmith@$DomainName" `
  -AccountPassword $UserPassword -Enabled $true `
  -Path "CN=Users,DC=company,DC=local"
