
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'e7d24d14e675a3b75475008faaa9a78ed68dccde03cb0182e5a17cd4e421d0c672335fbb9265c9d8afcd932947fd6b94085fb8014d511d65bc317a50490c0ac7'
  checksumType   = 'sha512'
  checksum64     = '362f16beb4aca20d8a5515abfdeb929a0ca85e4b227c2fecd31f542ef04fcc1a2ede47b2e5e639eb4504561cf25dbd231e12adf3d8e08a7d09f7f30837b17aa8'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
