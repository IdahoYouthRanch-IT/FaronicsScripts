$targetTime = Get-Date -Hour 11 -Minute 55
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
}
msg.exe * "about to restart"
Start-Sleep -Seconds 10
Restart-Computer -Force
