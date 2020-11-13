
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'c5948ab86a4d034f95f82bea81b57bf1f1dfe32a56f8852d51e17022a633d95cf9011adb8b3d241f514a98c05e634b23437598ecdbb4d339e0463e1f4ed35d9a'
  checksumType   = 'sha512'
  checksum64     = 'a4bef09cfe163ee6892a42b7b8b206cc7565e90bf091a84c3d51b13835f3c44220cf2c3014b72f60f4063091aa18f423ae824da5883aac587f18f2f0a0d216b6'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
