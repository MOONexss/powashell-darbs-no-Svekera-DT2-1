$laiks1 = Measure-Command -Expression { Get-Service -Name "Spooler" }
$laiks2 = Measure-Command -Expression { Get-CimInstance -ClassName Win32_Service -Filter "Name='Spooler'" }

$r1 = $laiks1.TotalMilliseconds
$r2 = $laiks2.TotalMilliseconds

Write-Output "1. metode (Get-Service): $r1 ms"
Write-Output "2. metode (Get-CimInstance): $r2 ms"