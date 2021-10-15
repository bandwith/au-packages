
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '17bf8a0c6a6996141294f8e105cf11624dd000553075784914656d51e87f294bb24ee5b78859bf8bbf13b7639d4259aa6a45c74a3ebc62afb2fb3b144cf7c5fc'
  checksumType   = 'sha512'
  checksum64     = '57084c016e4c69e6f1f6e6cc29c4b51d3c0da338b73cfa74844fcbaae29acd4c2075fa8a7b637fc34dbb9aec7340230aaa864d13763544d19109a9f8129768d5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
