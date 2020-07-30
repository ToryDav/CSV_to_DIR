# Please run this script first to match and move CSV files from the scripts such as CDP to CSV or VLAN to CSV
# Please change the $seedPath variable to match your system path, pleasue use an absolute path, not a relative path, this script must be in the 'ScriptOutput' directory.
$seedPath = 'omitted'

# Don't Edit Below this line 
# -------------------------------------------------------------------------------
$dirs = Get-ChildItem -Path $seedPath -Directory | select -ExpandProperty Name 

foreach ($directory in $dirs)
{
    move-item -Path $seedPath\$directory*.csv -Destination $seedPath\$directory\
}

Write-Host -ForegroundColor Green "DONE!"
