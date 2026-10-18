$laiks = (Get-Date).AddHours(-48)
$kludas = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$laiks} -ErrorAction SilentlyContinue

if ($null -eq $kludas) {
    Write-Output "Kludu skaits: 0"
} else {
    $avots = $kludas | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    Write-Output "Kludu skaits pedejajas 48 stundas: $($kludas.Count)"
    Write-Output "Visbiezakais avots: $($avots.Name) ar $($avots.Count) reizem."
}