
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'ab07474672cf48d57729a610d47d2c8a65247974afde0498dbe06b87abfddd9ddf9e1a59e7ec786f23ef0d6b2e447efa0b40d7210401708306e4ebe9d9da2ea3'
  checksumType   = 'sha512'
  checksum64     = 'af602a89c3910eb68564e2cadd4b09ddcf4c09afca41a2aab10cded179793b6d731f7587d94c8cae061d17d036438756182ccce1a53c659702d0b6640f4b55a0'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
