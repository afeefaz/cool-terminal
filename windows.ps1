Install-Module PSReadLine
winget install JanDeDobbeleer.OhMyPosh -s winget

$exp = "oh-my-posh init pwsh --config 'C:\Users\spay_\Documents\powerlevel10k_rainbow.omp.json' | Invoke-Expression
Set-PSReadLineOption -PredictionSource History"

$exp | Out-File -Encoding utf8 ~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
