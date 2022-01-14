
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '33923573009c6652d83ac4d0905dd7c39744d623b2a4e547120217d6ae8fed3e01f5fafffc8ee25eaa42e52f3df7aabf0e1f05891c6579d3cf8168cd380915c6'
  checksumType   = 'sha512'
  checksum64     = '027f428167d9291fa74e95525e25e7d40247ee06d2d51d038195d2be4d4e89be9b8158d4a9077744e58856a9e100ed45c36d8f5ccf8416cb2192f976f171fb77'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
