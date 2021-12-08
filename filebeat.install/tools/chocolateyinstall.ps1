
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '10c77f487d63c01edb05bda33f81975d4a00c4c05c68676f02137f8a5ef6584f97cffd2df432fdc85d8361f1eadb048d973c14695237f61286e9000ba76ee2d9'
  checksumType   = 'sha512'
  checksum64     = '0dbae59dc65d1aa2c54ebf00f3d0b4cde1b4917f611db73c87b572bd1286cf27a75236ebda81e979d6d4d8dcecfcf3b4382ef30056050cfca2f5d3a1c897b4ab'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
