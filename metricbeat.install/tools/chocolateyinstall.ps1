
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '4cfb013e8f02cd37542cc85ddc30e0b6bc8024d6491626d64ee5abb97e1b5cd5c2b5cd23f30ed373ba9f5bc857a2e2db33ff87a5c9db860a289d53ca96581e55'
  checksumType   = 'sha512'
  checksum64     = 'cc2ebcc07d54ccc4cd84faff9cde2a3931e191316c0d7505d34b5391e539991643e9e9ca6abea6cc6afc27e20cf7af94c1d173536f2c7b126c9d6aeffb0d5b4a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
