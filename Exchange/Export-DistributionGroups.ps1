<#
.SYNOPSIS
    Export all distribution groups and their members.
.DESCRIPTION
    This script exports distribution groups with their members into a CSV file.
#>

Connect-ExchangeOnline

$groups = Get-DistributionGroup -ResultSize Unlimited
$report = @()

foreach ($group in $groups) {
    $members = Get-DistributionGroupMember -Identity $group.Identity
    foreach ($member in $members) {
        $report += [PSCustomObject]@{
            GroupName   = $group.DisplayName
            GroupEmail  = $group.PrimarySmtpAddress
            MemberName  = $member.DisplayName
            MemberEmail = $member.PrimarySmtpAddress
        }
    }
}

$report | Export-Csv -Path ".\DistributionGroups.csv" -NoTypeInformation -Encoding UTF8
Write-Output "Distribution group export completed."
