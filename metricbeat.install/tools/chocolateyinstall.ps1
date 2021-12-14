
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'b8ec1ead8deed918908369a186f5851a47a9792d87306c32d22567d18aed41cad93644075784bc07aed83f42a843191ad7d5e41451b8033a80b5cffe256b3205'
  checksumType   = 'sha512'
  checksum64     = '071516ef718792377a8f34fe6c557ffd52dc0392e9dcfa9d0c1d15430a9f37b030c7e85c6cc479732c3d1a5e2d66337223ee26bf5f92897c5a304dcb2bf0d95d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
