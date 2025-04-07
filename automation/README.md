# ⚙️ Automation Scripts for IT Lab

This directory contains PowerShell scripts used to automate the setup of a Windows Server 2022 lab environment inside VirtualBox. These scripts are intended to be run on the domain controller (DC01) and streamline the configuration of Active Directory, DNS, DHCP, and user provisioning.

---

## 📁 Scripts Overview

### `lab-config.ps1`
- Shared variables used across all other scripts.
- Defines domain name, admin/user passwords, IP ranges, etc.
- Must be dot-sourced (`. .\lab-config.ps1`) before running any dependent scripts.

### `Install-ADDS.ps1`
- Installs the Active Directory Domain Services (AD DS) role.
- Promotes the server to a domain controller.
- Uses values from `lab-config.ps1`.

### `Configure-DHCP.ps1`
- Installs the DHCP role and authorizes the server.
- Creates a scope and sets options like DNS, router, and domain name.

### `Create-LabUsers.ps1`
- Adds a sample user (`jsmith`) to Active Directory.
- Demonstrates how to automate user provisioning.

### `lab-settings.json` *(optional)*
- A sample JSON config if you prefer to externalize settings.
- Can be used in dynamic scripts with `ConvertFrom-Json`.

---

## ✅ How to Use

1. **Log in to DC01** (Windows Server 2022 Core).
2. Open PowerShell as Administrator.
3. Navigate to this folder (e.g., `cd C:\automation`).
4. Run the following:

```powershell
. .\lab-config.ps1           # Load shared settings
. .\Install-ADDS.ps1         # Promote to domain controller
# Reboot and log in again as domain admin
. .\Configure-DHCP.ps1       # Set up DHCP role and scope
. .\Create-LabUsers.ps1      # Add example user(s)
```

---

## 🛠 Notes

- Scripts assume a lab subnet of `192.168.56.0/24` with DC01 at `192.168.56.10`
- All passwords are stored in `lab-config.ps1` as plain text (for lab use only)
- Intended for educational and demonstration use inside isolated environments

---

## 📦 Where to Place These
Place this entire folder in your repository under:

```
/automation/
  ├── lab-config.ps1
  ├── Install-ADDS.ps1
  ├── Configure-DHCP.ps1
  ├── Create-LabUsers.ps1
  ├── lab-settings.json
  └── README.md
```

This structure makes it easy to clone and set up the lab quickly.

