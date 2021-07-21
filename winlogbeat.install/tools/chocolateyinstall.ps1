
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'a77482c60502ec69037146917506088c5e6e1b2ad0ef6ae7841b7dfc1ecbdd02a1f81d66154a54a5def4432efb421773fc94b7b93ed6b8ac8a329687a45e7086'
  checksumType   = 'sha512'
  checksum64     = 'a6dced2f31a3cf9c964b7710f427fceead51be00a35a8866abf1f27f4599e0b85ef55e291e39a173d7df6d6019e6df97dd63c9ded8589aad3078f8d181553471'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
