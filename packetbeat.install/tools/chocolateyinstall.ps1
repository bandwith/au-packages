
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '8971a902494e3b728a861334825a7f43e736e7d3b27b5223af3da74d59cb4cb8bf862a027e68218127aa7af2169575c50e5ad119e1d3b9381eb1794133a5c900'
  checksumType   = 'sha512'
  checksum64     = 'd234609842cc01d424c50ea5508af7c16e34fd0baeb1f13d57d4aea61de1442881b3bbcc9cd3c564a9305b3ac488494c0f8a2baec2f92ec38acbb3dacb5fa2aa'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
