
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '614c95ff3726935fd21602fe37539b817926fd5ec962009cde00dfeab00414eefedfe52fe82194c6bcd50c1075092a972754c9cc8458ee41eb2ff9312d08f3a7'
  checksumType   = 'sha512'
  checksum64     = '1ab3f0e8d16c784f4c13c8eea0acc12b08c923e7df5c1038b58505b67aa73d61e7e96d652ebe28eb9cafc1ead02f0f3430452a9c9e38fa01c0c068e2711e11c5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
