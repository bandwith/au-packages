
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '72ded7ae77c4251357ad46657a9dddd8765cb193dc403d57b8baef46283a78ad4540450a396c037275ca340d9e4a558d0e4616c345c9cb7694e82eb1701e2a02'
  checksumType   = 'sha512'
  checksum64     = '18faba9c58dafb986f6494687fc4d75724782a66357b6841e4e45188a80d107afbb25ea7d3b4165ae467d19fadb2f8b4357df26feffb6b89d26f62489b584918'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
