
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'b5dd5167476fdda7a6705ce7d131bea685a9bb5d63b4b8c382bf548329f8e087b4de7a0d7f5135c4d9a33b28ceb44abbe603d64e4492900fc8a470e69e4dcc91'
  checksumType   = 'sha512'
  checksum64     = '752fe8957027b75623466b889813c4e0d2a1fb69836fc9d178e85b7b49dd7f86b35427eb8fda174fabf7a9a020e8385f1d0388ade59c3be9bd12c3ff01cc8ca5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
