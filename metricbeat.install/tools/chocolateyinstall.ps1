
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '969a4dbef7ccb0788aae5f11933b8b5ba5f5c0c2b424d8b7eaebd6f2aebac11b5bb7bc10c851e1ef703f92a59fe4299361c3657de1323b5e9e8a32f313ac147f'
  checksumType   = 'sha512'
  checksum64     = 'fd4c3970b092b37bf476ebe71f30ffde808a6d2fe9aa23e1b467c5202e016f5743dcfe4f97697ab9e0267dec90aaac6c26b1a080b682a3700fc6ea9ecddd63ed'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
