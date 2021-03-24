
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '7ab2dac93ec8797b273fe0acf0300e9b19374065e0b472c57401f8ba697b5057594c29bb8d163eff4ac8907a6f23f140cf4f97aa4732e714df2092f435d66e0a'
  checksumType   = 'sha512'
  checksum64     = 'b08346afda057dc7e4736c58c2c464111311e743326f92c8b7d39ce6db8a9d20af95b4bbc5b52f1641df6b83aa5aad97dea3601bd3988eabcfe0f9313c945d70'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
