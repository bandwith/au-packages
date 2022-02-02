
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '770a32cb5980feb71ed8cfcc59e7a0db4a7eb301717c161edbac6ddbb6669b24a9f77a91e75b071fbb8b9c4e677ea907bbf0d5d088db1d9e05c7c4688d2427a9'
  checksumType   = 'sha512'
  checksum64     = '19f9852476e68ba673ba1eee8cbbf2dbe9ddf7f112bc20bf3449344d1ed7e019a0ed92bfa39532db4c5857e30a31aaecfa92c49d613f13820ebdaf5f4c301d85'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
