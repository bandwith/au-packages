
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'c80efc953f55f056c72626969386a56195451a744a6c3cfb460d08dd12de1dcd54e56c7d9ca365025238e6b189555fe8ef66e5b2c7fd24004d5c25d11cd7262a'
  checksumType   = 'sha512'
  checksum64     = '4e78ddfa7bf0da6e842686510e5d039ece53ecbf1b7d780d1f725148c5b4752e18cc957b3c419d3f774e42ac198ef6296153671bc46b1a72547ed4874bafba2d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
