
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '38aece45e5e8c9ac656fa394c84d35f413e2995a6d805b064941a812086201e9d2f96cd1e295e0cd9d7a8384b7f113ba10f7eb2efe1b8362b28dfdf62ec5aa25'
  checksumType   = 'sha512'
  checksum64     = '6749c1891563c395017b6f5dab9fb08b60f9345c72cb30f77a6fdc43686b288a0b891d2d057134b3c8cf665368f7090992d955cd428044d4e4246a45f6dcd60d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
