
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'b09706a4fbb0f51ca6ae411587a30c73a586b2ca1ac6ad19e2c3f5f500fc249c43785f747daa389b0da5c604744cc8e8d26bc13b287909340129a0f875f59982'
  checksumType   = 'sha512'
  checksum64     = '948c0659278d548f3d92ed203b29dd04919d21352db64f93b4ac77bf3fe5f9b294c4519f1efa8300b27c7d09a1a17efd8b7bdb67eb8f7b9d8f354b9a47ee9da7'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
