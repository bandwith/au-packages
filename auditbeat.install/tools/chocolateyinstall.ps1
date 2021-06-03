
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '21999ce7c06b8b1834ca2981edd77ed0440f4880ad91b543067e6b3dbd70dbc1a7a3d469a2abc74f8e530ca3296f50ff77d1b6163b36a8d5e070eea2869f9597'
  checksumType   = 'sha512'
  checksum64     = '0ff1aee6c25763bafc91dffc1f1adf5b58558b77a70f5b5c06d549baac814260501cdbcdd8be145691f0af0ddb876e4fd6915fdaf0d5623dbb5b5f199e34df38'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
