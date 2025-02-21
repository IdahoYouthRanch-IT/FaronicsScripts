Add-Type -AssemblyName System.Windows.Forms
$TargetDayOfMonth = 21
$targetTime = Get-Date -Hour 12 -Minute 00 -Format "yyyyMMddHHmm"

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

#sleep for 30 more seconds
Start-Sleep -Seconds 10

# Build Form
    $Form = New-Object System.Windows.Forms.Form
    $Form.Text = "Windows Update Restart Notice"
    $Form.Size = New-Object System.Drawing.Size(700,600)
    $Form.StartPosition = 'CenterScreen'
    $Form.BackColor = 'lightblue'

# Add Label
    $Label = New-Object System.Windows.Forms.Label
    $Label.Location = New-Object System.Drawing.Size(200,10) 
    $Label.Size = New-Object System.Drawing.Size(400,500)
    $Label.Font = New-Object System.Drawing.Font("Calibri",18)
    $Label.Text = "From: IYR IT Support`n`nYour computer will restart tonight to apply Windows Updates`n `nPlease leave your computer running, save your work and log out before leaving `n `nIf you do not want your computer to restart tonight, call the helpdesk at (208)-992-5112 or send an email to Helpdesk@youthranch.org"
    $Form.Controls.Add($Label)

#Add Button
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(200,510)
    $okButton.Size = New-Object System.Drawing.Size(100,30)
    $okButton.Text = 'OK'
    $okButton.font = 'Calibri Bold'
    
    $okButton.DialogResult = "OK"
    $okButton.BackColor = 'lightyellow'
    $form.Controls.Add($okButton)
    $form.AcceptButton = $okButton

#to the top
    $form.TopMost = $true

# Show the form
    $form.Activate()

#Wait for Button Push
    $Result = $Form.ShowDialog()

#wait until start time has passed
Start-Sleep -Seconds 60

} #end forever loop

