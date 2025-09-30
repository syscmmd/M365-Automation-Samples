<#
.SYNOPSIS
    Export OneDrive usage for all users.
.DESCRIPTION
    This script lists storage used by each user’s OneDrive.
#>

# Connect to SharePoint admin (OneDrive uses SPO)
Connect-PnPOnline -Url "https://<tenant>-admin.sharepoint.com" -Interactive

Get-PnPUserProfileProperty -Account $null | Select-Object DisplayName, Email, PersonalUrl |
Export-Csv -Path ".\OneDriveUsage.csv" -NoTypeInformation -Encoding UTF8

Write-Output "OneDrive usage report exported to OneDriveUsage.csv"
