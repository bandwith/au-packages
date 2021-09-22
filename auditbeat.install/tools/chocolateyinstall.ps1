
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '6b2b4a9d19da8625e9e6f0e26bd3c98b24d22d50e05165fc689ec47696b65f49836765ce1d432627f89ac078c0d81122207612f55873e1f3eaa8cc0435ac7630'
  checksumType   = 'sha512'
  checksum64     = 'e728ce2181f9055dad1562dc2323fa8bfe60c366fb12ed890e9fe9ec51561f7d61269a0851d17d532b44f4ab42252dacc75541ba362a0207b1b111123483153e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
