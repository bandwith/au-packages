
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = 'e6e7039a59a339c412554df7ddd998a9b49ca1a70a1e63878668210fd6617bb6fc711aeb34b26f27f1be2617d196ab968e8886737983ce5ddcd5a0bf57c0a0d5'
  checksumType   = 'sha512'
  checksum64     = 'ede06215932932b714dd50432cedae4e0736a8d638b36658c00abdbd3b2ee91a78d4bcf1fa70d301a302a272cfa9d7cc44463a84a16b1d49496ce4db27a80966'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
