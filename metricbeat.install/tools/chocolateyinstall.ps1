
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'f5bc36c7e3f36c540fee1c84a9acd6c2ae8e1526bf20690581dcecdb618a1442069b91e26c56d119fc93003773974fe60a02106d2ba8d16ee162f2a7d34b84b5'
  checksumType   = 'sha512'
  checksum64     = '33e0a24d0bea99af66e91c363253fd29c3f455c6742ea88e94d85a81aa3a9f5750b7280207d8c459bfb9c958690805552954a4a3d5ffcd492c7cd04678fb5872'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
