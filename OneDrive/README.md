# OneDrive for Business Automation Scripts

This folder contains PowerShell automation samples for **OneDrive for Business**.

---

## 📂 Scripts
- **Get-OneDriveUsage.ps1** → Exports OneDrive URLs and usage for all users.

---

## 🚀 Usage
1. Install the PnP PowerShell module:
   ```powershell
   Install-Module PnP.PowerShell
Connect:

powershell
Copiar código
Connect-PnPOnline -Url https://<tenant>-admin.sharepoint.com -Interactive
Run the script:

powershell
Copiar código
.\Get-OneDriveUsage.ps1
The report will be exported to CSV.
