$dators = Get-CimInstance -ClassName Win32_ComputerSystem
$sistema = Get-CimInstance -ClassName Win32_OperatingSystem
$versija = $PSVersionTable.PSVersion
$laiks = Get-Date
$procesi = Get-Process

[PSCustomObject]@{
    "Datora nosaukums" = $dators.Name
    "Operetajsistemas nosaukums" = $sistema.Caption
    "Bûvejuma numurs" = $sistema.BuildNumber
    "PowerShell versija" = $versija.ToString()
    "Pasreizçjais datums un laiks" = $laiks.ToString()
    "Procesu skaits ðobrîd" = ($procesi).Count
} | Format-List
