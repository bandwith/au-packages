
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '719e809822482307e1bd632d8ee332bf946026cabed5bbb4dec30232ff396da2e9d81197bcb56330ac293c0196d24a0b8069432b4bca56dff8fa53768ecec454'
  checksumType   = 'sha512'
  checksum64     = 'a07b2e5afb920667a94a8798fe6507509760df1c627af80f53f4fadac1c85257ef252ebce0360eec4c459c57c405b58425455a917f4188837b57b94dccbda71b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
