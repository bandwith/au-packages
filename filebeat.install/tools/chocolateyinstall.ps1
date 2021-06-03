
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'd93632cc269772be300fa73c2fee9d9128b2ddc73bcbb46007f6db80d0cc8eb0e91f8bbf09db92975cccfba04088865f1a4d6e9fe10586232ea97e0c3b2f196b'
  checksumType   = 'sha512'
  checksum64     = '71b5ab65e3e4082bbaf6189185dca6923b33dd5d2c8f29e8a823cf6f73cda6d3009693327d2e0784961ea4469e78741c676fdf8145c5cf7e2bc9a8f198272076'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
