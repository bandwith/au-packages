
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '2858626a69e7fae069c41b382f02715061d434812ae861c674fff451deaa8da8a7f193503f2ed259e0de12dfb2acd393f592dc57168fc731455428f9f2d93017'
  checksumType   = 'sha512'
  checksum64     = 'd5021c3db204f7de8417bf2067fed36e89a6f810b44af0a0a3ae568acaa4ca3a5f509cc92b320d059eae1441fcc5ce85d0b245d3d3654dfdb017cadc34819d4d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
