
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '5aa4587cecb4c6560c5da1bffc63a03faae154e96eb2656ab37d82afcdcdf8dabe39c03e1577fd882991d9bdf530a0b7695dc6d68952a09718cb3ed4b69d43f4'
  checksumType   = 'sha512'
  checksum64     = '6ef6ca6c32a1a4b4ad87c323193376c2acbbcef8ccf53b122b3171c2fcac6203844f9494ade931e544037d1e51f06afb2b261e01c7e2652b59efd6e2892757d2'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
