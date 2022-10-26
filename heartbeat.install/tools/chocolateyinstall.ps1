
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '5ed0f1de15bc208951196aec0de68a1ad0c5a4f6aacd1f3250876e9b6eef0c57927ff1e332c90295eed29290a19945668d1695541af68fb9caf976c17098b17e'
  checksumType   = 'sha512'
  checksum64     = '9e4830e5752287b296d1caea6710c3e5fe2b48a8da6e3b1356f4bdab48976c578ef9a0d41f93eb9b680be76c762ce8768a718ee4b87544fec9505d23f2958752'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
