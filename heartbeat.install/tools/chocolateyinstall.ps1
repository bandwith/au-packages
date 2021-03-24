
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'c9666ed113c7de2a61ccba2ce2f62e96a8d846ccef462ea4b6853ca78d0e8c9557dca416295f747d372daa3e9bed20e348e279a2c485ff3b473c910704ae0892'
  checksumType   = 'sha512'
  checksum64     = 'bdbc0a90fbd404aaa764316145ea3f8c08fe009ae58c500eac13625db23ca65f328eff2df77fff1c2d0e2156a1993377ae951eaba3a6ec81dbf051545a36f90e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
