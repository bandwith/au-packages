
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'cdb39d1a04dfdb6de8beeea7830d2ef3d07aadb254ef03dc1373f6cf0563a07b13deee947bcc425b15a9e0a8467e97b38165c50b47c75dabebf2877db78d6a6f'
  checksumType   = 'sha512'
  checksum64     = 'aad1404bd6fe9558e95138a68ced6c28077284d4d6f6d65b4bdc0474c45f335690218235dcca3564b2ff19e50ed1d1505fe54917dadca967d1bd04c80f5ad6cc'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
