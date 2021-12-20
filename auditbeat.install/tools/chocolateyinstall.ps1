
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '47af3a198450a26a5cebb5256ac30280b4c46bc53f88c493f983e0bfc3785f73118a328af72ec6b8c61c8bccc7bc86c41d3a01e8a3342597cc7703cc65cc1088'
  checksumType   = 'sha512'
  checksum64     = 'e9e928ddde7e4293d08cd7553aedc1c1af59b096e941049e7f21c6199ac9a57a7a658469f7704c340a7b88f173d8184fd2301746c382ca1ebc50857d5ef735d1'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
