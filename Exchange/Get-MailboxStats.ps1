<#
.SYNOPSIS
    Get mailbox statistics for all users in Exchange Online.
.DESCRIPTION
    This script connects to Exchange Online and retrieves mailbox sizes, item counts, and last logon times.
#>

# Connect to Exchange Online (requires ExchangeOnlineManagement module)
Connect-ExchangeOnline

# Get mailbox statistics
Get-EXOMailbox -ResultSize Unlimited | ForEach-Object {
    $stats = Get-EXOMailboxStatistics -Identity $_.UserPrincipalName
    [PSCustomObject]@{
        UserPrincipalName = $_.UserPrincipalName
        DisplayName       = $_.DisplayName
        TotalSize         = $stats.TotalItemSize.Value
        ItemCount         = $stats.ItemCount
        LastLogonTime     = $stats.LastLogonTime
    }
} | Export-Csv -Path ".\MailboxStats.csv" -NoTypeInformation -Encoding UTF8

Write-Output "Mailbox statistics exported to MailboxStats.csv"
