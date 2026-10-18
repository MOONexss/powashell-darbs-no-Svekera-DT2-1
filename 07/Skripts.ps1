$diski = Get-PSDrive -PSProvider FileSystem
$robezaGB = 10

foreach ($disks in $diski) {
    $kopaGB = [System.Math]::Round($disks.Used / 1GB + $disks.Free / 1GB, 2)
    $brivibaGB = [System.Math]::Round($disks.Free / 1GB, 2)
    
    Write-Output "Disks: $($disks.Name), Kopejs izmers: $kopaGB GB, Brivas vieta: $brivibaGB GB"
    
    if ($brivibaGB -lt $robezaGB) {
        Write-Warning "Bridinajums! Diska $($disks.Name) brivas vieta ir mazaka par $robezaGB GB!"
    }
}