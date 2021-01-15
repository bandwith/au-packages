
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '4597ad2bf9b7d13c51513bc980758c3c07ccad086a7e027a7607b6b3d0c22807549fd7dc9c307fb25d24c079d2e6c73a947eef6cc922d495186b5215a079131e'
  checksumType   = 'sha512'
  checksum64     = '1fe889b9116ff53ce4f4326a8f4fbf67ec83765fd7dee83dafabc9ee9d1c8decb659c2a64c55ab9a48e83e23063905ecaa40ef8c29bb7aa1b3ea4d17c9b31832'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
