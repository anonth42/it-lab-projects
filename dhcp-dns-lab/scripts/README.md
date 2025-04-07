# Scripts Directory

This directory contains PowerShell scripts utilized for configuring and managing the VirtualBox IT Lab environment. Below is a brief overview of each script:

## Active Directory Scripts

- **create-users.ps1**: Automates the creation of Active Directory users.
- **create-ous.ps1**: Automates the creation of Organizational Units (OUs) within Active Directory.

## DHCP Configuration Scripts

- **configure-dhcp.ps1**: Installs and configures the DHCP role, including scope creation.
- **set-scope-options.ps1**: Sets DHCP scope options such as DNS servers, domain name, and router.

## Usage Instructions

1. **Prerequisites**:
   - Ensure you have the necessary administrative privileges to execute these scripts.
   - PowerShell must be run as an Administrator.

2. **Execution**:
   - Open PowerShell with elevated privileges.
   - Navigate to the directory containing the desired script.
   - Execute the script using the following command:
     ```powershell
     .\script-name.ps1
     ```
   - Follow any on-screen prompts or instructions provided by the script.

3. **Note**:
   - Review each script prior to execution to understand its function and any parameters that may need to be set.
   - It's recommended to test scripts in a controlled environment before deploying them in a production setting.

For detailed information on each script's functionality and parameters, please refer to the comments within the individual script files.
