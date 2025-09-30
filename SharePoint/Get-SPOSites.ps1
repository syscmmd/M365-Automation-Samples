<#
.SYNOPSIS
    Export all SharePoint Online sites.
.DESCRIPTION
    This script lists all site collections with their URL, storage quota, and last modified date.
#>

# Connect to SharePoint admin
Connect-PnPOnline -Url "https://<tenant>-admin.sharepoint.com" -Interactive

Get-PnPTenantSite | Select-Object Url, Owner, Template, StorageQuota, LastContentModifiedDate |
Export-Csv -Path ".\SPOSites.csv" -NoTypeInformation -Encoding UTF8

Write-Output "SharePoint site list exported to SPOSites.csv"
