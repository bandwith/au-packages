
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '48907a23a089f04736455acf44130ec955127d4869b186b89e937793ae048d125ac005d38bafa59f9cfb1da40c89f74b804cbc0985e073c61066de76dafa5412'
  checksumType   = 'sha512'
  checksum64     = 'bd5f8382b7a811a9c562e38bb40d9ada26847d3e9f36d360a3c47a9fc62495f44729decd53447c82669eb1e1e7b8dd38a4d2c8b1c34e25e1ac724fc1b751c68f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
