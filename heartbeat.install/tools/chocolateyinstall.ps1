
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '17267fe38990012162fa008f5ac7d99543c3d3bc6580e545146dbe195e8275e55b1a9b1b4610aba3f5a01df5e48706fc41c8d4a091d0ef5bd4e6ec4c340f43d7'
  checksumType   = 'sha512'
  checksum64     = 'c2d251f2fbf6467055f34331f23894df49c4d18fd7ae8e4c507838201891e5a34d93593244cd4bc0a49a337e04b8ca31608b8a6844ff71c32083cdaa643a2da6'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
