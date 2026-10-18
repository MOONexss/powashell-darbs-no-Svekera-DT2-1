Get-Process | Sort-Object -Property WorkingSet -Descending:$false | Select-Object -Last 10 | ForEach-Object {
    [PSCustomObject]@{
        "Nosaukums" = $_.Name
        "ID" = $_.Id
        "Atmina MB" = [System.Math]::Round(($_.WorkingSet / 1MB), 1)
    }
} | Format-Table -AutoSize