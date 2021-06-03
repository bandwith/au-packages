
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '9ad71022208e54f687beb996a5455a272449f491db750ef52aa8572e356e2baad853f5095d2df50cb381e7811912985c0b0aee841d743c3fc97867b570ccb6d8'
  checksumType   = 'sha512'
  checksum64     = 'd142f44b81ebafe64bee5f6d8363f587871b2cd57529ab564d943aa350dc265398e5f202026dd57d81da31598f26a92d104a6482ac24282b889db38e88fab381'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
