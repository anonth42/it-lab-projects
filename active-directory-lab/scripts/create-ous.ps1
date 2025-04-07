# Create sample domain users inside specified OUs
Import-Module ActiveDirectory

# Create standard users
New-ADUser -Name "John Smith" -GivenName "John" -Surname "Smith" `
  -SamAccountName "jsmith" -UserPrincipalName "jsmith@company.local" `
  -AccountPassword (ConvertTo-SecureString "LabUser2025!" -AsPlainText -Force) `
  -Enabled $true -Path "CN=Users,DC=company,DC=local"

New-ADUser -Name "Alice Tech" -GivenName "Alice" -Surname "Tech" `
  -SamAccountName "atech" -UserPrincipalName "atech@company.local" `
  -AccountPassword (ConvertTo-SecureString "LabUser2025!" -AsPlainText -Force) `
  -Enabled $true -Path "CN=Users,DC=company,DC=local"

# Create admin user and optionally add to Domain Admins
New-ADUser -Name "Eric Admin" -GivenName "Eric" -Surname "Admin" `
  -SamAccountName "eadmin" -UserPrincipalName "eadmin@company.local" `
  -AccountPassword (ConvertTo-SecureString "Adm1nLab!" -AsPlainText -Force) `
  -Enabled $true -Path "OU=Admins,DC=company,DC=local"

Add-ADGroupMember -Identity "Domain Admins" -Members "eadmin"
