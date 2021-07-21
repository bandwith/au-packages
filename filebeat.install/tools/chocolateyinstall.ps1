
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'b32a4058b44ce970949d73dc91e3b2c1c17053ab23175df688a7bc830701a00eef2605d1fe9dc2cada7d7ef8d72b624c50c10f711ca01cd0d4e2882db35dbb26'
  checksumType   = 'sha512'
  checksum64     = '459aaebe1e27b90bf51b09ab591c35c8fd55b65b8ba46a47d0f3ce2ed814d9fa12eaf50144e002b028e6cbf8886040be86cc496efab3dfc2cc16d696acb67434'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
