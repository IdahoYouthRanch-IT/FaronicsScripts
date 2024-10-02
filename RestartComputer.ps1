$targetTime = Get-Date -Hour 11 -Minute 55
while ((Get-Date) -lt $targetTime) {
    Start-Sleep -Seconds 5
}
msg.exe * "Hello from Faronics"
# Restart-Computer -ComputerName IT-2041 -Force
