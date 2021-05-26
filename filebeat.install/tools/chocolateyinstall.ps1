
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '0ac0d4d6b76a822d82ebc531db451a4618a432b8a5640cfbaa550f7e57d3dcd18de8f3c9df23423448dd1d92fd3ec9217a7297c3740da390914e8fbc7b38986b'
  checksumType   = 'sha512'
  checksum64     = '937a05c5a3cbf46428eb4f7aa866826046b1295e2c868b86314d7e5a7a3e0f77fb4fde494b62bee350f9fab3bbfc79a7c1b0141ee635f3c58a8902c12f0089ab'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
