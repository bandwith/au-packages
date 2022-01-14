
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '0e595e2c9fe6957f53ad42cc38069cd4b2efe4125e86dc40c63a58554ff5d224e01b6f12ab26e80b1495bd37be40a0629b5182be4fc99d3f8cc02237fdb37319'
  checksumType   = 'sha512'
  checksum64     = '5f2a3dc45a88dd39e3ca053c00733bc31e86ca99a4344801da47cf8f3a0d4ae52b4a56175bc7e555fe70ddd1bdcbf624d40ee04ebfbce186706479c2c1e9d37a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
