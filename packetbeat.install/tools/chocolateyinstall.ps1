
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'ac57a6cf246b3431ed693a3ff466f7f895e845305c936a83e154555453ee0b217885da764f339e7f8149764f9673ff9af0d8dd698d3b89ca5c714e170e3a7abb'
  checksumType   = 'sha512'
  checksum64     = 'afb2d5cf596a66db33d7d15a0e3c9daf27b5266c91890af533fcb7f920cf00c0c68e06a1352cb0866c4c9c33e3ddb6d4845d48422968992f59f05cbff20d5d78'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
