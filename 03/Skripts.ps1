$servisi = Get-Service
$darbojas = 0
$aptureti = 0

foreach ($serviss in $servisi) {
    if ($serviss.Status -eq 'Running') {
        $darbojas = $darbojas + 1
    }
    if ($serviss.Status -eq 'Stopped') {
        $aptureti = $aptureti + 1
    }
}

$summa = $darbojas + $aptureti

Write-Output "Darbojas: $darbojas"
Write-Output "Aptureti: $aptureti"
Write-Output "Kopeja summa: $summa"
