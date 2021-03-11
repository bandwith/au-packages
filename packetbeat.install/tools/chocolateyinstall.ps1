
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '3abf0f6537a1a751ee8814b0ddf7172d48bbc847a794a48c8b4febe5e07121acf025151910fc7cdb6f286433083b242a2d5db371b5bb2d49a80194b49dc5806e'
  checksumType   = 'sha512'
  checksum64     = 'c12ef547f32b93a1ae7c102a00ef4e5be8355dbcebf044ddd9795a77b72e5cb50689fbbcea319bfb51c4f15d972aaad6ec9dfa141ff07f056dbf373e64c612b5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
