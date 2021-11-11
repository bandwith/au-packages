
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'ca7bf48ab2dfb6f7be0a252079685a1401c5aa058be5aa709aad0cd7e1d41265fbb5e0bbc9b95d60a49849f161b7be6683da4f27438fc965743cf0d75c5c07ed'
  checksumType   = 'sha512'
  checksum64     = 'ba6c24dd985b7e59416c193ece152808705c20d6ce6cce162147723286dcda932efcd7be48fb56b87c00253c4dac263f1c19129f629609d32196dfbb8854e553'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
