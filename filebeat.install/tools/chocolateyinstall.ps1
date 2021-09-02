
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '2f57bfa4611f01d96238ded63814b73bdad01643da0a34c38445ee6ad5af61f25a527e94ae7577752693eb67ed00da7117e5324642e0470da4f198fb679ba779'
  checksumType   = 'sha512'
  checksum64     = '249f970e3f78efb5bd21a4435b5266721f50dbf8ec3f32b473cb42b6234d1c9c784d06059d613123f2e262e8f8c3af606ea72ac1be5add27cc28a65f1febb8ae'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
