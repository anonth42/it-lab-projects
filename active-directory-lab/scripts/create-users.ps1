# Create Organizational Units in company.local domain
Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name "Users" -Path "DC=company,DC=local" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Admins" -Path "DC=company,DC=local" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Computers" -Path "DC=company,DC=local" -ProtectedFromAccidentalDeletion $false
