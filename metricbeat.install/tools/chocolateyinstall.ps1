
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '9d43d1a89a209d724256ae04ec9c540ab8ccb928b0f7bbd12e7f594d661d80a046e8d0e224af35244a99c091c8bd9ae57d5db3539289798a813e45efd7b30087'
  checksumType   = 'sha512'
  checksum64     = '4b175af71c2c1d4d503f99848eba7c48f2ff8ce24f1c34c10da4e5b70c4070e5fe15d53f95c9c0cda75b67bb7fa3a1f24619e8fd505f711f6e66a857df336322'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
