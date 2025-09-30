# Microsoft 365 Automation Samples

This repository provides **PowerShell automation samples** for Microsoft 365 administrators.  
Scripts cover **Exchange Online, SharePoint Online, Microsoft Teams, and OneDrive**.

---

## 📂 Repository Structure
- **Exchange/** → Mailbox reports, distribution groups.
- **SharePoint/** → Site collections, storage usage.
- **Teams/** → Teams and users reporting.
- **OneDrive/** → User storage reports.

---

## 🚀 Usage
1. Install the required modules:
   ```powershell
   Install-Module ExchangeOnlineManagement
   Install-Module MicrosoftTeams
   Install-Module PnP.PowerShell
   
Connect to the services:

Connect-ExchangeOnline
Connect-MicrosoftTeams
Connect-PnPOnline -Url https://<tenant>-admin.sharepoint.com


Run the desired script.

⚠️ Disclaimer

These scripts are for educational purposes.
Always test in a non-production environment before applying to production.
