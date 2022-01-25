Set-Location c:\workspaces

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Terminal Icons
Import-Module -Name Terminal-Icons

#Oh my posh
Import-Module oh-my-posh
Set-PoshPrompt -Theme santi
