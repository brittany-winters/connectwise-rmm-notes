# performance-check.ps1
# Logs system performance metrics to C:\RMMLogs\performance-log_<timestamp>.txt

# Create log folder if needed
$logDir = "C:\RMMLogs"
if (!(Test-Path $logDir)) {
    New-Item -ItemType Directory -Path $logDir | Out-Null
}

# Create timestamped log file
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$logFile = "$logDir\performance-log_$timestamp.txt"

# Collect metrics
$cpu = Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select-Object -ExpandProperty Average
$ram = Get-WmiObject Win32_OperatingSystem
$uptime = (Get-Date) - $ram.LastBootUpTime

# Write to log
"[$(Get-Date)] System Performance Check" | Out-File -FilePath $logFile
"CPU Load: $cpu%" | Out-File -Append -FilePath $logFile
"RAM Used: {0:N2} GB / {1:N2} GB" -f (($ram.TotalVisibleMemorySize - $ram.FreePhysicalMemory)/1MB), ($ram.TotalVisibleMemorySize/1MB) | Out-File -Append -FilePath $logFile
"System Uptime: $([math]::Round($uptime.TotalHours,2)) hours" | Out-File -Append -FilePath $logFile

Write-Host "Performance check complete. Log saved to: $logFile" -ForegroundColor Green