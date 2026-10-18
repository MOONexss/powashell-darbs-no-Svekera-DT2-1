$procesuSkaits = (Get-Process).Count
$servisi = Get-Service
$darbojas = 0
$aptureti = 0

foreach ($s in $servisi) {
    if ($s.Status -eq 'Running') { $darbojas++ }
    if ($s.Status -eq 'Stopped') { $aptureti++ }
}

$kludas = (Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=(Get-Date).AddHours(-48)} -ErrorAction SilentlyContinue).Count
$diskaBriviba = (Get-PSDrive -PSProvider FileSystem | Select-Object -First 1).Free / 1GB

Write-Output "Procesu skaits: $procesuSkaits"
Write-Output "Aktivie servisi: $darbojas, Aptureti servisi: $aptureti"
Write-Output "Kludu ieraksti (48h): $kludas"
Write-Output "Brivas vieta diska (GB): $([System.Math]::Round($diskaBriviba, 2))"