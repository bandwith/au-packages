
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat-msi'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '97fa465c2b1c4f5c3c1ddd17ff45206f5f90290edaf6a43140f8899c922019fcd4f9b0fa6507fe3fbbe64e7864b3005418d70c24214120f5b07f01c92902034d'
  checksumType   = 'sha512'
  checksum64     = 'd92a24f59beb0bfc455dd27fe77ac25d1362f27f418da872bf152eab2804b3707ebb4696eef61037693d470e39a85639625343d114c0f051dd9c1d6c68ad5465'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
