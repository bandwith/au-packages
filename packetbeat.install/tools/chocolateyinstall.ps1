
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '3edf623a7a012d3597e2bb9acaa5d89a2fe20bdd5481982835a582a58c3a2f28cc7161a9199493a6920a17ea583d27afbafffb117211cb3b2b2ca994e4d74984'
  checksumType   = 'sha512'
  checksum64     = '90713d6a6558ff632cab01c842c1172a5d24b9cf858265da8fd1a3426e961270044e0c735f67a6fc38f7cbba1c6cf187443f4a3884698398c8136be1724d4534'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
