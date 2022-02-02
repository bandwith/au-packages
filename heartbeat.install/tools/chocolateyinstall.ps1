
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'dbd76b452b6c342c7245ad847084a2e79cbee0cc7999d2114ef521efdbd88be3c09de53fec168cda2ad9d6afceead5aa9b3c2107cfce28c3d1ea1fd349e712b0'
  checksumType   = 'sha512'
  checksum64     = 'db51b380a1cbef578e94e90a740a99bf8eb766b62f8ab563d514cb7a8b443813a9d812b3ac24710621a9545d85576ee755106715e88d3a039c2236811034dc14'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
