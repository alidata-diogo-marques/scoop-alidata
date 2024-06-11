foreach($file in Get-ChildItem ".\" -filter *.json)
{
    & "$($env:USERPROFILE)/scoop/apps/scoop/current/bin/checkver.ps1" $($file.FullName) -U
}