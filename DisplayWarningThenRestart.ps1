# Define the target time (e.g., 15:30)
$targetTime = Get-Date -Hour 11 -Minute 25

# Loop until the current time reaches the target time
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
} 
 
Add-Type -AssemblyName System.Windows.Forms    

# Build Form
    $objForm = New-Object System.Windows.Forms.Form
    $objForm.Text = "Test"
    $objForm.Size = New-Object System.Drawing.Size(800,500)

# Add Label
    $objLabel = New-Object System.Windows.Forms.Label
    $objLabel.Location = New-Object System.Drawing.Size(300,150) 
    $objLabel.Size = New-Object System.Drawing.Size(300,300)
    $objLabel.Font = New-Object System.Drawing.Font("Arial",30)
    $objLabel.Text = "Your computer will restart in 30 seconds. Please save your work"
    $objForm.Controls.Add($objLabel)

# Show the form
    $objForm.Show()| Out-Null

# wait 30 seconds
    Start-Sleep -Seconds 30
    
# destroy form
    $objForm.Close() | Out-Null

#Restart Computer
    Start-Sleep -Seconds 2
  #  restart-Computer -force
