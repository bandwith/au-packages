
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'eb757e0ed88d4dc02f5ad24b12743ec90e272a360b40cc755e3226002e1ffb48426a5c0cf6f7ba2e31f61bc2b2d5e39fe1dde63143df49abab5f6d9a50d7da28'
  checksumType   = 'sha512'
  checksum64     = '3695bd3aa2a497000d55af68d30355bed10daaaae528e6117595a1feb8dc51ddbc385f34f6b8617bad31c4f31563bfeafbbd19687b1e7a9c790ff7de910063b3'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
