Exchange Online Automation Scripts

This folder contains PowerShell automation samples for **Exchange Online**.

---

## 📂 Scripts
- **Get-MailboxStats.ps1** → Exports mailbox statistics (size, item count, last logon) to CSV.
- **Export-DistributionGroups.ps1** → Exports all distribution groups and their members to CSV.

---

## 🚀 Usage
1. Install the Exchange module:
   ```powershell
   Install-Module ExchangeOnlineManagement
Connect:

powershell
Copiar código
Connect-ExchangeOnline
Run the script:

powershell
Copiar código
.\Get-MailboxStats.ps1
The reports will be generated as CSV files in the same directory.
