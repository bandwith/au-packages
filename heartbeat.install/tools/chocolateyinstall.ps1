
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'cf78926091119be44b0b88becc39f6b36fa054bc69513d759832742a6916b924c497d5099386e341828b047ed0040829886d1ef406fc536d6a8e8c12c9da17eb'
  checksumType   = 'sha512'
  checksum64     = '1e18719b32a5542b3427ad3413000b95ab6626f908b70ebd76d8fd90837bb7b7e901f35c87b92ae89a1f3b1f0c78cbc38f7f6d96d183c434c3df0776ab5b3aff'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
