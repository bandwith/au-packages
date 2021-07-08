
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '6868f133206995f2e8523671b6530fdf166c804e2954eff749ebe32a7925e89d5ab001bcd35795c9eb7fe03421fca925e0badcea8b7933690708b4cf0932f61b'
  checksumType   = 'sha512'
  checksum64     = '70b5d11618e04fa2aa8bda23085de170dfd6d115ef210edd760131238f243dad46c97617a9e5808bce205320a7fba729a7751b3a878f77b5e416ade446dd126c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
