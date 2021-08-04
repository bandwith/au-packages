
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'be6f013711da4513bca183db85d5ee83ddf2927fec80ad749ebc34eadf168e28332b6c72625cadb45f4fed117c774843a48f3f8852fa31b2f9a0213f433fcf29'
  checksumType   = 'sha512'
  checksum64     = 'c77fa80f1def90ff06a21711ef9731a612dee72b00f4b365958ff81fd70a060707bbefee9b266b026f3a5779e21acdc5c6a8532ddc4f1b1ecc12814ea569a273'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
