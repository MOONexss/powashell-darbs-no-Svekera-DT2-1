Get-Process | ForEach-Object {
    try {
        $ipasnieks = $_.GetOwner().User
    } catch {
        $ipasnieks = "Nav pieejas"
    }
    [PSCustomObject]@{
        ProcessName = $_.Name
        Id = $_.Id
        User = $ipasnieks
    }
} | Format-Table -AutoSize