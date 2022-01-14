
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'f6d54347d9d5b4adf0ca3cabe1f833cfcd38ffffdf67d2db580ea2be902f7f7cba9491cfa158892587fde6107d8b91b514d32e3c3255e4a7e7bfc4ec3c6e2de9'
  checksumType   = 'sha512'
  checksum64     = 'e3ff9a7a05b63538b12f2c03373afd738c384d464bed872ad1448d516911d6fbb7a4d45026637463de63f27547850dc497c1204b6816c6028967ecc98e2dc69f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
