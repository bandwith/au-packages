
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '53826e8c7e32bf2703d8acffa219f3a1996f86d7ab84566c7c466cb2f491d187d764b330894b2ae868dc301adc7ee07c9289f8e5cd7b628a816edffead40c081'
  checksumType   = 'sha512'
  checksum64     = '7977037bc9d647e07ffe1266694a31620edf3a2cb0f3d4c265989488bc90359a5763cc55154910d01ab07685d641b7713cd6e593d4077021a3a1a5ba5ffd497f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
