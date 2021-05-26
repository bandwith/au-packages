
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '336daa601271e4679d487ad52bb3e77752108acd490ae72801abb95687df2757e688938cefae1e0a15836c64194e4a0a6d6678cda95f38977df8d12c5f98ac76'
  checksumType   = 'sha512'
  checksum64     = 'ff33deb28cd8c04a9742086082261edf64f4d1b86479e24f5f98d0c2284036e0f6516280c4ab89b669f48868302b2f02aebf93ef9e5803632ac255d12bde673a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
