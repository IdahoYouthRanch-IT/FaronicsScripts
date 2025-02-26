Add-Type -AssemblyName System.Windows.Forms
$TargetDayOfMonth = 26
$targetTime = Get-Date -Hour 14 -Minute 25 -Format "yyyyMMddHHmm"

#Loop forever while the computer is running
While (1 -ne 0) {

$TodaysDay = Get-date -Format "dd"

#Loop Until current day = target day
while ($TodaysDay -ne $TargetDayOfMonth) {
    Start-Sleep -Seconds 3600
    }

#loop until current time = target time

# Loop until the current time equals the target time
  while ((Get-Date -Format "yyyyMMddHHmm") -ne $TargetTime)  {
    Start-Sleep -Seconds 15
  } 

[System.Windows.Forms.MessageBox]::Show($THIS,"From: IYR IT Support`n`nYour computer will restart tonight to apply Windows Updates`n`nPlease leave your computer running, save your work and log out before leaving`n`nIf you do not want your computer to restart tonight, call the helpdesk at (208)-992-5112 or send an email to Helpdesk@youthranch.org", 'Windows Update Restart Notification', 'OK', 'Information')

#wait until start time has passed
Start-Sleep -Seconds 60

} #end forever loop

