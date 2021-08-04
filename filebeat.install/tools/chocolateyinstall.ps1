
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'd953639b8a63cae86776120edbabcfcd9a391beb543da6e35b2214c91016c40d6ed30b3c5fbe17f8bde392a156e982eca430eefdf2cc8d8bfaeee70556794f3e'
  checksumType   = 'sha512'
  checksum64     = '3e0e808911f10e75d306b11c28dd5223be247716b31c89c66a315a593ad5728eff300a9b2d70a223b5b045c572b24b4d6c0ffd2f8271b958f0e6fcad825cf544'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
