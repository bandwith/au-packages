
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '1bf19400d19b7724a1f29d938003af715dfce7c42c1d596e5088235b94b43258137af93556141a4a510c79f1b239c51e0184a7cc5616f6d9216b6ea7fbeddcbf'
  checksumType   = 'sha512'
  checksum64     = '84dad559c0bcd7916dc2f40cba76c89b32af429f6f656247305f627fdfa4de014b02fb8357ad91012645a3fc58ed5f417122e31d7a64b6b96bc386a3ac617f8c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
