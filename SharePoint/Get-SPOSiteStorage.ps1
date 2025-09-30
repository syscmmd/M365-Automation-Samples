<#
.SYNOPSIS
    Get storage usage of all SharePoint Online sites.
.DESCRIPTION
    This script exports the storage usage (used vs quota) for each SharePoint site.
#>

Connect-PnPOnline -Url "https://<tenant>-admin.sharepoint.com" -Interactive

Get-PnPTenantSite | Select-Object Url, StorageUsageCurrent, StorageQuota |
Export-Csv -Path ".\SPOSiteStorage.csv" -NoTypeInformation -Encoding UTF8

Write-Output "Storage report exported to SPOSiteStorage.csv"
