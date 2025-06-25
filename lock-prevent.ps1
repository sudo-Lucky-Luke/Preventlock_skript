Add-Type -AssemblyName System.Windows.Forms

while($true) {
    [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")
    Start-Sleep -Milliseconds 100
    [System.Windows.Forms.SendKeys]::SendWait("{SCROLLLOCK}")

    $timestamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$timestamp] - Lock Prevented"

    Start-Sleep -Seconds 270
}