
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '89fe45906bfc412f6a4d3494918dfd2e6d2fe90e409dad0361090a85c38cd4bd7dc908a08c96f88222e18ef1a0d55d4c147eb834ac1d6e45d5ef14c3ec1b541a'
  checksumType   = 'sha512'
  checksum64     = '8ac84bf0b1165f05d3165d2fabfc30b302786c5375c88dadbe77ae1fb5045a40b30fc5c161c260fbac6a7e2492621b0bf6888a2ea04ee117d6ea3eaa993613c9'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
