# Define the target time (e.g., 10:30)
$targetTime = Get-Date -Hour 10 -Minute 30

# Loop until the current time reaches the target time
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
} 
 
Add-Type -AssemblyName System.Windows.Forms

$TimeToRestart = 15   

# Build Form
    $objForm = New-Object System.Windows.Forms.Form
    $objForm.Text = "Test"
    $objForm.Size = New-Object System.Drawing.Size(800,500)

# Add Label
    $objLabel = New-Object System.Windows.Forms.Label
    $objLabel.Location = New-Object System.Drawing.Size(300,150) 
    $objLabel.Size = New-Object System.Drawing.Size(300,300)
    $objLabel.Font = New-Object System.Drawing.Font("Arial",30)

While($TimeToRestart -ge 1){

# Show the form
    $objLabel.Text = "Your computer will restart in " + $TimeToRestart + " seconds. Please save your work"
    $objForm.Controls.Add($objLabel)
    $objForm.Show()| Out-Null
    Start-Sleep -Seconds 1
    $TimeToRestart--
    }
 
 Start-Sleep -Seconds 1
    
	$objLabel.Text = "Your computer will restart now"
	$objForm.Controls.Add($objLabel)
	$objForm.Show()| Out-Null

 Start-Sleep -Seconds 2

# destroy form
    $objForm.Close() | Out-Null

#Restart Computer
	Start-Sleep -Seconds 2
	restart-Computer -force
