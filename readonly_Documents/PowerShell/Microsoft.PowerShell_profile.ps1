# ENV variables
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\pablo\.config\komorebi'

Set-Alias cd z -Option AllScope
Invoke-Expression (&starship init powershell)
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView
Invoke-Expression (& { (zoxide init powershell | Out-String) })
