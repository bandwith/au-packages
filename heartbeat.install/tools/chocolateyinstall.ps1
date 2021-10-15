
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '2666a0677e37655df75a0dd3fad6a276f4140364fced9ad68d55a7fd8680b70516201faf814ccd934eb38fd550888c3637b7dd72ba63996e22adca96daf9d14d'
  checksumType   = 'sha512'
  checksum64     = '528552241442887cad11215f5e3949a98b2bf4b632d5c9fb146da157c4b8ca95ee7abf23395d606e3d77be8080667cf66e2fbf0d4467c2f703f57d89dbd1fb1c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
