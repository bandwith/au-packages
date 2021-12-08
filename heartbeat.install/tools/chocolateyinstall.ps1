
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'd83aa1a09ee0a48fd509416b0d2c692dfa3d0a9807fcbe5c6fcbef6704ec60ab688f4b0b11c9fd37d2873be93f2602d8f591547d1cf70795165c1b6140319323'
  checksumType   = 'sha512'
  checksum64     = 'fa97742ca86f0f8a549b79a7d9aa2c9084a493827bd75a4a727c21681f3870c53f4a0da20593fbcaad50bafc3627f70bad6487165be5444e230bb2ccd6c64716'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
