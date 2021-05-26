
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '6fba5ebc2a63010d51ec249bb317dc0a9e23a421a95c8af586a97c5eb706f5b36d2699fbc5159372a46d20bd2479de871f9cbea9449d71f5e7972aa2dd986a13'
  checksumType   = 'sha512'
  checksum64     = '1fa956c356482eb99518b48c1f570c569c79d153d4160bfa0668e9f40e42b01524611a683a134d35b3da4328de8538b76bc0093d27743a82b4c84ee34528e920'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
