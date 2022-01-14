
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '89be69b376c40825fc43e0d240fa6b267cb12da649601c17462928c9eb09f7219eae17dc413400abbad7eaee6eed3088e68bf4662ce057c74ad91dd685d1f7a2'
  checksumType   = 'sha512'
  checksum64     = '408ae8f5d17a5a9ff720e59d9de06ddce8012d531ce04c2e072ed97aed6de391c80377ef84b8c84824fc9b9fd6f6c550b40bd338f66eb89726bbf3e7c2a8eabf'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
