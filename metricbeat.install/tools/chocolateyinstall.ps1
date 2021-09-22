
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '343088f23ad3efd478ff342688b576af1c933e446f3b6575f79f3803e865a7d72d86bca2203da0153fca2acd37670fd2a5e6e9f112c09111be8b66e42ae38ae3'
  checksumType   = 'sha512'
  checksum64     = 'e78f7f94021e58678320aeed48d6dcc57712c19335973c0f504306bf5bd406e3e59ca648080e269e4611e997153517476de9507fea31717e463016f937937111'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
