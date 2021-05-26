
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '735cfcad13df15b33a0b60e54eceb94aed1cea609abc3b2033ef0d96737732be01bf7207a6ff3ad5d0066d015e812e87938348d2a7cc2237347d21890171155f'
  checksumType   = 'sha512'
  checksum64     = 'c3442356e9284728c0097ae1ed8ef45277f3afff1d7b66bc234102d76a5bf37c960accee4cfaad0572567b484b8a6a05491c6b7fbc9b54695daddcb8a46ede7e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
