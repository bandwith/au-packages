
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '4215fbc98646a1e92379d168d71588b668e57ff30541cf09147761f7f31acdb7697a6a624211e3e88051a3aa5bc8e2fffe2a9b4ecd4e4c0f9d723aa1e584da81'
  checksumType   = 'sha512'
  checksum64     = '1f7724525f13b6d5ff029bfcbeb2f0fd844cf796144b531a73686f50e9f0fa865e366ed3360dbeff4425f1d4b31f644ad8bb84aaa5ceb619a928f7d63aa7492c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
