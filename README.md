# Switch-DefaultAudioDevice
This was created out of pure laziness. I switch between my speakers and headphones a lot, so I made this script that will switch from one to the other with one click.

*Requires the "AudioDeviceCmdlets" module. https://www.powershellgallery.com/packages/AudioDeviceCmdlets/3.0.0.4*

To run this on your own computer, replace the two audio device IDs at the beginning of the script. You can get these by running the following command:
`Get-AudioDevice -list`
