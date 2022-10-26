
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '3541638a70bb2860ede12e7b82a42ff0f52b499919ee89c2739a802838fda04680087081f99d88881b6944b2eaaeaf3d2980254cde864c9363fe6b540d6fdc49'
  checksumType   = 'sha512'
  checksum64     = '01788ee2cd64cebf6a0aa24ff4eb935843747567b1c1852b67247722fe39efdd8345918262d3ce08ea1ac5146b7323bb91eb7639853c2270ef8567d6f74fd8f7'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
