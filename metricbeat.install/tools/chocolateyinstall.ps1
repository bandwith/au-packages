
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '96152149bfc54634df152d1d37e5d1b66e72a84f60438e32f4bbbb9745cab8f3e7b6110c3bbccc2dfc9f5414c90d386b32e5923f289a4ee089061e78a376ef9a'
  checksumType   = 'sha512'
  checksum64     = '733990d949483551acf008c087c0b2e75d9a9e744483c382d10dd62eb803d65fe326018c865399c8d1c7b35860e443253a21b6474d426dd564d9cd4fe7f2ce3b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
