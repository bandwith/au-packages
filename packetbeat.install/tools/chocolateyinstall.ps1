
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '0adbb9663bc59085e7110698957f87d98b06f4dc086d0b837edaf6762b9f9f5c0f660a8b132a0468858dcbd4c980e302d53b9ff004cf3f789eb715db6b5d06c0'
  checksumType   = 'sha512'
  checksum64     = '015ab78734b4ce372c9e76e7ecece88de658b195a3090b8e3b48130688630a5d9fa7656c43e0762faa7c0f31547de3eb95156c581b3f91ecf1966a9ca2a6d55b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
