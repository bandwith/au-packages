
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'e2db9417d0b70f80853f04b98e5f3ec3905b8d204405edaa7e2d1f3f82249019262fbfc50d89135e9184ed02c78196b09b42cd4b101b6c101ee4a8952302b394'
  checksumType   = 'sha512'
  checksum64     = '02e6771766066aeba9c03564927790148c8beb566d3be098566b20ff889ba00eea4f7258e779d9fa1d75477184a0b8877723a4bd0ab4f936e4056fb02e0437d0'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
