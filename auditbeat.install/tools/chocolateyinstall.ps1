
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'd72edfbbdd5f65ab0cac983d7e1a1e1aceb47c1e44cbd713f4daed27b6f15926d204f9f742aa5cf6c4afcbc65a787562d5dc0b37025e141983aaaa7933dfd38b'
  checksumType   = 'sha512'
  checksum64     = '9de4c583e0f7f660e768a93f0d3ee1a52d478e100e10ba9bcb0a93f5280fd9adfe8bb8382eaea936774391b18abbb5fbe96abc564ff701e7318fa0d5d1716455'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
