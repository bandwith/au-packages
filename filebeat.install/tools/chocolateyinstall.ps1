
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'f23f61755fbd8d1ce12c7abe8752ad0309567e977ba31d7b7eab4fbcc3009e0414a84ff03226ce95920e25c7d9f5cfeb33e94f2e99b04b856a7ed139c9c32d75'
  checksumType   = 'sha512'
  checksum64     = '620a8b21439677ce28a0ad921e921df067552e5d33abf0dc8693aef8091fb62814c757dbeee1b3c0e527f597de93059bba60141121e7b82554990d66de24a25b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
