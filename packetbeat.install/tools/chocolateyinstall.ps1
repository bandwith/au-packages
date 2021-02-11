
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'd3fc44155bc7568514d878c469c1ff2a110cb93a00cfc0e1a5e3abe7696a2ce58fac627d6c0b2bbcb7b26833e082c0af43dccf6a833b33b0b978cf690aab574d'
  checksumType   = 'sha512'
  checksum64     = 'f4ec5ec22d089e03f4033583c0c4f7cf888d8f6087e78843a814a5947c4bf77b8413478766a2df381a3c4659d5754264adebb2d94e527ad569113c7805c17321'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
