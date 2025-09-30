# Microsoft Teams Automation Scripts

This folder contains PowerShell automation samples for **Microsoft Teams**.

---

## 📂 Scripts
- **Get-TeamsReport.ps1** → Lists all Teams with owners and visibility.
- **Get-TeamsUsers.ps1** → Exports all Teams with their users and roles.

---

## 🚀 Usage
1. Install the Teams module:
   ```powershell
   Install-Module MicrosoftTeams
Connect:

powershell
Copiar código
Connect-MicrosoftTeams
Run the script:

powershell
Copiar código
.\Get-TeamsReport.ps1
The data will be exported to CSV files.
