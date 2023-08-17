Set-Location C:\Users\santiago.murtagh\workspaces

# Terminal Icons
Import-Module -Name Terminal-Icons

# Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/santi.omp.json" | Invoke-Expression