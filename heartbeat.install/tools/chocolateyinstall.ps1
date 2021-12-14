
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '20db78b87af5acbdd280e3da82b600d79fdca8eba0ed33ee61ebbdb6652133165abb19e97f30911343197b8ff9170d383772a97013894c31c00e4a669d4c3e6f'
  checksumType   = 'sha512'
  checksum64     = 'cedb715088af432f05c9f2fa8f14be9f86a31aa969b305e74feff900fa2a3894d316b56e2953078496e9b5458f2da36e5a5a7919d870adb7167156d4f2162236'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
