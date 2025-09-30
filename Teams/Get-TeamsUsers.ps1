<#
.SYNOPSIS
    List all users in each Team.
.DESCRIPTION
    This script exports all Teams with their members and roles.
#>

Connect-MicrosoftTeams

$teams = Get-Team
$report = @()

foreach ($team in $teams) {
    $users = Get-TeamUser -GroupId $team.GroupId
    foreach ($user in $users) {
        $report += [PSCustomObject]@{
            TeamName   = $team.DisplayName
            User       = $user.User
            Role       = $user.Role
        }
    }
}

$report | Export-Csv -Path ".\TeamsUsers.csv" -NoTypeInformation -Encoding UTF8
Write-Output "Teams users exported to TeamsUsers.csv"
