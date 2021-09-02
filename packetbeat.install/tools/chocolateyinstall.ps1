
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'b3d24d36135a986a27345932b27b889d538906f59f7df4b8241ca629d34399c8c95868816cf6c9d373188b9952350ff07894f3de6cff40520e2f5b16f86eb368'
  checksumType   = 'sha512'
  checksum64     = 'acfa2e239413ef4c3e86971733db23893724b3ce09c3a3c716072d77a13b71856f94d04d552187e468e136d3c431200fda427806ec5bfecdd9a66a28fa4f2bcf'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
