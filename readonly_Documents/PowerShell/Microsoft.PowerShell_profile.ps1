# ENV variables
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\pablo\.config\komorebi'

# Zoxide (better cd) configuration
del alias:cd
function cd {
    z $args
}
function cdi {
    zi $args
}
function .. {
    z ..
}

# Eza (better ls) configuration
del alias:ls
function ls {
    eza -al --icons=always --color=always --group-directories-first $args
}

Invoke-Expression (&starship init powershell)
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView
Invoke-Expression (& { (zoxide init powershell | Out-String) })
