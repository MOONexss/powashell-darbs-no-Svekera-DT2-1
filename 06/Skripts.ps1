$draiveri = Get-CimInstance -ClassName Win32_PnPSignedDriver | Where-Object -FilterScript {$_.Manufacturer -ne 'Microsoft'}
$draiveri | Export-Csv -Path "draiveri.csv" -NoTypeInformation -Encoding utf8

$skaits = (Import-Csv -Path "draiveri.csv").Count
"CSV failâ ir $skaits rindas." | Out-File -FilePath "izvade.txt" -Encoding utf8