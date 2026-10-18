$ErrorActionPreference = "Stop"

$computer = Get-CimInstance -ClassName Win32_ComputerSystem
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$psVersion = $PSVersionTable.PSVersion
$now = Get-Date

Write-Output "DATORA: $($computer.Name)"
Write-Output "OPERĒTĀJSISTĒMA: $($os.Caption)"
Write-Output "BŪVĒJUMA NUMURS: $($os.BuildNumber)"
Write-Output "POWERSHELL VERSIJA: $psVersion"
Write-Output "DATUMS UN LAIKS: $now"
Write-Output "PROCESORU SKAITS: $((Get-CimInstance -ClassName Win32_Processor | Measure-Object -Property NumberOfLogicalProcessors -Sum).Sum)"
