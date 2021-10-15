
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '1c2f890faf02fde895d3ac502522bb1285558afd1b04b6a0ce32b9b8fdeff7c88617ebc79992397ab4d0093ef89b5a6c16f12db5e522224efb92600075c12649'
  checksumType   = 'sha512'
  checksum64     = 'abea96a2da2b7dafcbc74fcbf9d611e29b483ddebf82d3febee99812c6da4c1cde3fa9d14fd4de6fb6bb401b93d8d6925e424e58aedc8abceac02ac81b76e7d8'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
