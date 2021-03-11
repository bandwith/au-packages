
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '5f1b8261a722ce5787ac382517b8399ea0c90dd793d1cac4dd094ea24749125c4a8de065b28fec0b8d86618911f7d6ee870ac530333049aa9829ed2f63e4c2f3'
  checksumType   = 'sha512'
  checksum64     = 'f3670bfef34383cf9c3bcb103f1cf5445da6d463b07d1ea287cccb4bfa4b0cb6a2ea24b1e0f9aed4ca1c0dc06f464da27b00d0c0ed0ae9f9d34d1515a9d2c763'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
