## Simple powershell script to auto-type for you in Habbo Origins (or other applications)

## MODIFY This section
$SpeechText = "buying bird bath -----> 8 teal ff pods and 3 tubs" ## Set this value to the string you'd like to type
$SleepTimer = 2 ## Set this value to how long to sleep for
$ApplicationName = "Habbo Hotel: Origins" ## Habbo process name


## Don't touch this section ############################
while ($True){

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate($ApplicationName)
$wshell.SendKeys($SpeechText)
$wshell.SendKeys('{ENTER}')
Sleep $SleepTimer
write-host -foregroundcolor Yellow "Sleeping for $SleepTimer seconds.."
}
############################
