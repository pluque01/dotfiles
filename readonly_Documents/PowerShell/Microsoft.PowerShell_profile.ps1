# ENV variables
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\pablo\.config\komorebi'

# Zoxide (better cd) configuration
Set-Alias cd z -Option AllScope

# Eza (better ls) configuration
del alias:ls
function ls {
    eza -al --icons=always --color=always --group-directories-first
}

Invoke-Expression (&starship init powershell)
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView
Invoke-Expression (& { (zoxide init powershell | Out-String) })
