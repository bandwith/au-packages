
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '596571742580d7913b8f199457773f36ab7f73e57241e1ec42e398189670a8ef02239f5fd3b10076ae261eac6cda20261ef6cf7bc06cd4695a45a4f58fdd5c25'
  checksumType   = 'sha512'
  checksum64     = '8edd90a11640efad7a93a35993ad630115a54a06e2f33bca48321c8fbe761e377b9655f2365a8f1e9e9baff447dad02b108890659a53f57de29897f678e2b4cd'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
