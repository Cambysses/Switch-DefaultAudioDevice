Import-Module AudioDeviceCmdlets

function Switch-DefaultAudioDevice
{
    param
    (
        $CurrentDevice,
        $NewDevice
    )

    if ((Get-AudioDevice -ID $CurrentDevice | Select-Object -ExpandProperty "Default") -eq "True")
    {
        Set-AudioDevice -ID $NewDevice
        return $true
    }
}

$Speakers = "{0.0.0.00000000}.{f4659798-580d-4e58-a1f0-e2ec426740b9}"
$Headphones = "{0.0.0.00000000}.{72b960aa-f4ee-4966-a297-7f1f649921c9}"

if (Switch-DefaultAudioDevice -CurrentDevice $Speakers -NewDevice $Headphones){return}
if (Switch-DefaultAudioDevice -CurrentDevice $Headphones -NewDevice $Speakers){return}