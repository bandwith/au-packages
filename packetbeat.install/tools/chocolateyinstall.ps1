
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '895184aed34b01c0df8b51ad6b5caca008a4aa7b5b2f0c82bd5581d21f1f225b3f2844e322d8c2de9483ff26919bfceee85818e6d04858bd09fa5d2790b5f14d'
  checksumType   = 'sha512'
  checksum64     = '10e634f354a86062dc0bd03f7561f0915b3694b3195bcb793f789cf65d7c4732136394939b5cb8ca34e6182c1cbf82c5bfa201c8fb90d55bc9dc3a9756328913'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
