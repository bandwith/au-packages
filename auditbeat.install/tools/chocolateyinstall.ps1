
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'bdaab3ee8b49255e81e7dacea95394a999b80240740ff48635be7b8e6091148f73468fc3341bb926e3cd03a28c6279fffd85e39edaea5fa0b6862dd3be781952'
  checksumType   = 'sha512'
  checksum64     = '6cfa77e6451884fea95c2af666004c95d0ab0623691fcb4e39284e5b10ee24d8a19c0a95fa69b20554943468c54a6c4d2238c85d18e78c4e3d05f7a4558bf433'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
