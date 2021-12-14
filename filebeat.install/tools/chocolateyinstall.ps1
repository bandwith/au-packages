
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '8a624b4f4fb3f03f4c98c3aa585f2bc888411046a844bd1f67f3091c33d2337f63e5d58a5eb9c892f268789a6b5acfdb9e7a5761fd629f4c981b75720d180af5'
  checksumType   = 'sha512'
  checksum64     = '27683001406486dd95c070cfa5832ac68ccb79745db6e34b883b88c24676f0864504812934ac8b26bcd9209a65ac70f4a50c586f42fd435d4ae04b9696163616'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
