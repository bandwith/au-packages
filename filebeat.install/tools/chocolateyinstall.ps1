
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '125974160431ea1b1dc518c6b74dc2c9a015d360d1170dd3f174457e95b62325b6b8bf6bcfa84f82faefc4fc82faa7690145fb73ea5ed7af0cebb97563275619'
  checksumType   = 'sha512'
  checksum64     = '90ff3cdc19c5e74bcdd5ade8043d0b67b24514cf889926aa0dfb74642d9c542e490918766c1147bab6f4b300d7d2b0b26114ea347cab6c4e6d678906e6ff5b73'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
