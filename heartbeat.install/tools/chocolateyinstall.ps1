
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '776b0f50284cad20df74ba9dedd8df96886f2b7208c0f41a7a99dd5669b5e011837daac9016fc9a2c800a42262956f5aa72f7c14090d0e748790e744cbfca003'
  checksumType   = 'sha512'
  checksum64     = 'f9651da26a758155621e526f1fe4324fe9d8fdfcfaa72a0ed73c0a2048cf4d715c3570756e4920baa3724ece720135bf3f8da85de99b0e9c7ca2a744658d30b4'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
