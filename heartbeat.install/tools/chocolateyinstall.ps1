
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'df5a412dd6785366b512d58eb65d9a378a7771a44a9fadb36a5d5890a84b356a361a88dce17bcb892593ecd71b92d4248f1f20ddaba215083bde291aa93613a3'
  checksumType   = 'sha512'
  checksum64     = '6c5e2b3dfa3b1d22787dac6d427a59abbe981555e078eb12f680c5e2bceda548ffbb3b5e97894babf45a00fdae8c21032982f2668b3f29f195bfeb3ee252cc70'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
