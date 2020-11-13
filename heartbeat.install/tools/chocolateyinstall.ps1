
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'bfc59affa1442aa420333aca9f1f1649d40c16141f59af354ca4fec05e593994b04f055db1e82f0dac1e6524e26bb06233a58d1596df181e4424873e6ca27cba'
  checksumType   = 'sha512'
  checksum64     = '0ee2566d75e0d185ffa10c0b3a83b16b704d812cad825a515a626915a28aa7d4086ae04ef99c0ac1166e2d4df5ab2c0b041bea63aeff57ae26e0d73ac103d25b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
