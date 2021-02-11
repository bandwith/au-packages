
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'f0f7eb5dcf7b3961209fe8e6fb7d821a67dbb50720ebf073b5b0d6c14e05aebfc2396ef1f2f419beb79c0f83662fd4a8d74265870991c97380296541eedbafce'
  checksumType   = 'sha512'
  checksum64     = '8448b0f65431bd492499fd3c4036ef9c7e3f497b65a75c9bfa7898ee5f55087b5fd09cf8182bedd6142e94bbf25a9d9bcf7950c3b2d68ef1e2e2b3099c0f7fb5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
