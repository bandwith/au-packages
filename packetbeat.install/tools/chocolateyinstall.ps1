
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '4909acf69ac697311a1d25790814bed0157530df5dee49234bb7fd6c5d9fb6502594f69941658204b6b7782c9e50f43c2f37ba9fd7ecc546a215af700b69dc8a'
  checksumType   = 'sha512'
  checksum64     = '04d7762fd9935032e986e3940602cbc5ff4647899f6bccd9364badac5c16a1c04c6bae0a3a26ba9a09a2d58971441cfd91ba3dd6fd752973e75c1473ffff91dc'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
