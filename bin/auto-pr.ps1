param(
    # overwrite upstream param
    [String]$upstream = "alidata-diogo-marques/scoop-alidata:main"
    # overwrite originbranch param
    [String]$originbranch = "main"
)

if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$autopr = "$env:SCOOP_HOME/bin/auto-pr.ps1"
$dir = "$PSScriptRoot/../bucket" # checks the parent dir
Invoke-Expression -command "& '$autopr' -dir '$dir' -upstream $upstream -originbranch $originbranch $($args | ForEach-Object { "$_ " })"
