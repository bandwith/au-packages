
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '8836ace03aba85b65454a98da811139b020cc749e54e0de2552ba6557d1b2b8a3be73cf04068bd0b362f493609fb91b86142ebdebaa6bc3898ee2d042c725876'
  checksumType   = 'sha512'
  checksum64     = '4177c0125496261ab41fe71a1bfe2d1898d99ea36276630c5177a8be86b1cca27424edbfb9a99e0dd7940417f0a2f94a42c254c2747bcb259c2556353e413fea'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
