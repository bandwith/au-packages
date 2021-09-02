
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '0cc22d9fb498b660b2483af062cfd2d4b7e616c3bc7a069d493d254176cb229a6dfb9f3d44f651d8ef3bf11e514ccc47771927972e21bd52750439b364cf624a'
  checksumType   = 'sha512'
  checksum64     = '6f573a51b950d0b5d640fa16b3bba914f128abd017ff502631001a2c5cf7eb59b65bf93f225e0e0264d81c7e5527d2d2e8813414ccd99bc9e72ddaca1a44c10b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
