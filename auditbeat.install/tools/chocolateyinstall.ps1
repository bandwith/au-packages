
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '48a070cfcdc92dae3f01a7527ec1225233d7d1a74660bf9c5ae7fd0aa12443641cb8b0df9ff871df21bf83c71c8e28c0064e530426d3012701ff82294a143a45'
  checksumType   = 'sha512'
  checksum64     = 'e0a1b4e37e553480e4c0f05b0ce65cf1c6239f4b12d0abd0ae2fe1b3b3b51d3f3c7f245ee8743e9f24b3c1f33ec984eff2cf738aac1a72d9940e44f5c04ee706'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
