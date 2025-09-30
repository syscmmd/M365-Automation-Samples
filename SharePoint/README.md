# SharePoint Online Automation Scripts

This folder contains PowerShell automation samples for **SharePoint Online**.

---

## 📂 Scripts
- **Get-SPOSites.ps1** → Lists all SharePoint sites (URL, owner, template, storage, last modified).
- **Get-SPOSiteStorage.ps1** → Exports SharePoint site storage usage (used vs quota).

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
.\Get-SPOSites.ps1
The reports will be exported as CSV files.
