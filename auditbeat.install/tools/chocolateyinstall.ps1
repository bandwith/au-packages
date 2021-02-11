
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'bd83ced648e524a0791bb250be8cc342f6deaf176d7df9b56cd6ef5aa58a5d83e1bec84de137a673f98ebb75f842754943c68c3ab93e6372ed3cc5a95798b8cc'
  checksumType   = 'sha512'
  checksum64     = '9d0d0a59cb1dc2d92c6c231bb787d3fd0c3d7ad2908a572ac33dac7c279adcabd7e67cfbdcae6cb08838b485714e035c1d80230d6cd6c6033f3c5e7d75ecd625'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
