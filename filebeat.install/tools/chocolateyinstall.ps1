
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'f72276fcec89e5787c6651a676d92cd521e74c16de7f4b7fce0b2b42f5b704f25dcbeedd175aae037ccd14d48ea7c99ed2d0a048efc019052300f8f63c6eff93'
  checksumType   = 'sha512'
  checksum64     = 'e1387d1d92bf2119b51845ec4e93843d9ba40cd4d5642c68f48c072a92977303075fe56765b5b2745c2b3a59d23569662fc507bda0d2c66a789472d83de34c66'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
