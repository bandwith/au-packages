
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '655f58d4a55b9e05d2bb3d14887f7ee0ba1ac0308842290466e3a356b8d28d2c1fc2b46793fb1344961d6cddba5d85cf7044663f6f14cff7fb8833efeae987d9'
  checksumType   = 'sha512'
  checksum64     = '5a04df8ccca4b8a132730baa1ebb70de81b6ee7f3ad1dbfa40f5acf0d38626b3034b0eaa586a3680e194dc1963903fa2dc234f4ac8f63c7ca76598587c331072'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
