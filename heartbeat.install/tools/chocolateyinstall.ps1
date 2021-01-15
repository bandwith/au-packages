
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'c82a3cdb732aa870109de7ec0580b75a5964437cce48a78e24049e4269e7d4b8178825d41e960c523fd8339e96fa45537850b5cfc9b6b008037e51ca104c202b'
  checksumType   = 'sha512'
  checksum64     = 'd2f8b2e8abd5bcccb91f940ab15ac6fc4b213b55c2e087da030894ceccad149b14c90b3534387f19ca4ffd6426e5f3fe512fb7c766f94204e64511bcb1a268a5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
