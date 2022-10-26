
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'bd7e726dab98fa02749b109d5c8781cdc8fc17aba69eed873ff166764607ac26fc2daffd0df190678148acb970dc1078154518ad940ab262833a83a692ff0218'
  checksumType   = 'sha512'
  checksum64     = '2855d8927b24fc791147650d797ae3e726fb4791d320db72c19206dae62a05fab5e1356f664b0e9dc506d8746f6632780694a9017ea30c40ecc1229381021bb5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
