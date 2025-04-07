# it-lab-projects
Windows Server Core AD, DNS, DHCP &amp; PowerShell Automation Lab

🧪 VirtualBox IT Lab Project Notes

🔧 Lab Setup Overview

Hypervisor: VirtualBox

Host OS: Windows 10 Home

Primary VMs:

Windows Server 2022 (Core)

Windows 11 Pro

Networking Mode:

Adapter 1: Internal Network (LabNet)

Adapter 2: NAT (optional for internet access)

📦 Lab Goals

Practice Windows Server domain management

Implement DHCP, DNS, Active Directory, GPOs

Automate admin tasks with PowerShell

Demonstrate networking and system admin skills for employment

📌 Setbacks & Solutions Summary

#

Setback

Resolution

1

Win11 Secure Boot/TPM

Registry hack during install (LabConfig)

2

CLIENT01 couldn't ping DC01

Changed adapter from NAT to Host-Only/Internal

3

Reverse DNS lookup failed

Created reverse zone + PTR record on DC01

4

DHCP auth failed

Removed -Credential, ran as Domain Admin

5

CN=Users confusion

Switched from OU= to CN= for built-in container

6

Domain login failed

Fixed DNS misconfig and restarted CLIENT01

7

Wrong DHCP server answered

Switched to Internal Network to isolate lab

🧰 Configuration Notes

Static IPs:

Server: 192.168.56.10

Client: DHCP assigned (e.g., 192.168.56.100)

Domain: company.local

Server Hostname: DC01

Client Hostname: CLIENT01

Client Local Username: e.trudel

Client Password: Tru3l@b!0425

Domain Admin Password (DSRM/Admin): Comp@nyDC2025!

Domain User Example:

Username: jsmith

Password: LabUser2025!

✅ Final Status



📝 Future Improvements

Add more users and custom security groups

Implement Group Policy Objects (GPOs)

Examples: restrict control panel, desktop background, drive mapping

Automate snapshot-based rollback before major changes

Add login script automation or logon event tracking

Create CSV-driven bulk user import

📂 GitHub Upload Notes

Folder structure:

it-lab-projects/
├── active-directory-lab/
│   └── scripts/
│       ├── create-users.ps1
│       └── create-ous.ps1
├── dhcp-dns-lab/
│   └── scripts/
│       ├── configure-dhcp.ps1
│       └── set-scope-options.ps1
├── screenshots/
│   └── [related visual confirmation files]


🔗 Repository: https://github.com/anonth42/it-lab-projects

