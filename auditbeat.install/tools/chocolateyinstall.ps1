
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'c0e2828246012e021c7b78627ab3e3416d8cb13bef862dcad1e48cbf1e21c1625aa4cd8535d34fa07ebd23efe426234ee08c1e5e0ef455dc889dd0ad96fadc20'
  checksumType   = 'sha512'
  checksum64     = 'e825398541517c0a9b96c9af5e38d61c7af0c0d97cb9cfc8d5a10dfabed05da2719a77240fdd678ca0ce74a2538d2c914ab483527807284a23e7d94be736a85a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
