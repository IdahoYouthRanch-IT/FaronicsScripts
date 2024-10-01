# Define the target time (e.g., 15:30)
$targetTime = Get-Date -Hour 15 -Minute 45

# Loop until the current time reaches the target time
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
}

# Execution will resume once the target time is reached

Write-Host "Resuming execution now."

Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show('Hello, this is a pop-up message')
# Restart-Computer -ComputerName IT-2041 -Force
