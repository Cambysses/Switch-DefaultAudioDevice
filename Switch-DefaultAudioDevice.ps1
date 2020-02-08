Import-Module AudioDeviceCmdlets

$Speakers = "{0.0.0.00000000}.{f4659798-580d-4e58-a1f0-e2ec426740b9}"
$Headphones = "{0.0.0.00000000}.{72b960aa-f4ee-4966-a297-7f1f649921c9}"

# Check if Speakers are default.
if ((Get-AudioDevice -ID $Speakers | Select-Object -ExpandProperty "Default") -eq "True")
{
    Write-Host "Speakers are default. Switching to headphones."
    Set-AudioDevice -ID $Headphones
    break
}

# Check if headphones are default.
if ((Get-AudioDevice -ID $Headphones | Select-Object -ExpandProperty "Default") -eq "True")
{
    Write-Host "Headphones are default. Switching to speakers."
    Set-AudioDevice -ID $Speakers
    break
}