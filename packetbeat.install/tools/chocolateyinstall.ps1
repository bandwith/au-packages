
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'f6965648ee7225411a3d805d5ac4a12f1ee61ecd68c4526f9b014e236774c835d076aa64641aa2970afb0e5e8edbad19fe8c986e01b78c5e9aa737c5a066df5c'
  checksumType   = 'sha512'
  checksum64     = 'ba9036c3e909dab28acd64d2729fa6b514d46a1ffb452cbf62ca91e50077c8787d5b61516856ca271aa64d4180a874c700ec3724215d0fa750b4958a7aea5024'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
