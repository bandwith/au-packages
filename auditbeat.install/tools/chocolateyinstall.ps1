
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '6b5f952ab0d956b1d174f574f31da12a6485fe766116857bf228d5f317beca380363e22c5096c9ea0d017f8b75ad1667fb232cc38d821fd6dea1fde0d376c113'
  checksumType   = 'sha512'
  checksum64     = '5fe470e0ab6fd1b97b714796d361407566f1fa22ea0f0b3859622e8d8fddec68784cdf648cf305a3687b6cbcfeb008199000364506df5de6c1729237610d9658'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
