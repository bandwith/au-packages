
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '911930c5699d172fd9eddfc0287eeb4cd7ad154e0ab5780e21da22aa6fde9ed4268f64e14df40a945dab5ccdd915e6f15c94e77aff058c35607eee521c26c79d'
  checksumType   = 'sha512'
  checksum64     = '969f0f84040df9dc94b2c71304a9a11ee9d5326b3efd53056ad63a8a2d752dfd1b25ed1a3b116111232bdabe28ec2c41613be0b498b03e9266dadce9e0d73585'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
