<#
.SYNOPSIS
    Export all Microsoft Teams with basic details.
.DESCRIPTION
    This script lists all Teams in the tenant with display name, visibility, and owners.
#>

Connect-MicrosoftTeams

$teams = Get-Team
$report = @()

foreach ($team in $teams) {
    $owners = Get-TeamUser -GroupId $team.GroupId -Role Owner
    foreach ($owner in $owners) {
        $report += [PSCustomObject]@{
            TeamName   = $team.DisplayName
            Visibility = $team.Visibility
            Owner      = $owner.User
        }
    }
}

$report | Export-Csv -Path ".\TeamsReport.csv" -NoTypeInformation -Encoding UTF8
Write-Output "Teams report exported to TeamsReport.csv"
