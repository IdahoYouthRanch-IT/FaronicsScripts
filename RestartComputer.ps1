﻿# Define the target time (e.g., 15:30)
$targetTime = Get-Date -Hour 11 -Minute 55

# Loop until the current time reaches the target time
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
}

# Execution will resume once the target time is reached

msg.exe * "Hello from Faronics"

# Restart-Computer -ComputerName IT-2041 -Force
