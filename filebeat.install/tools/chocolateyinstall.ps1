
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '22673bd25f19e3fb3c4ef4c58e3e5ab462182ff45619d86f8215ae609d5091cd16a90b32669d84c2aba184bb68e2e3c4da469bc19db9a355d05dc0f67f525eaf'
  checksumType   = 'sha512'
  checksum64     = '427269136f77f6f1b0b0375dac5cf81ac83b02a9a911ad3072b5cc62d05e90193ecde228b85b396fcc99c51c753b5bcd9d2cd0400e5f5fe6e6ac17d049581aab'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
