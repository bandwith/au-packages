
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '536bdbed03f7158ac85b562f5c4cfbc4ccdf0a0a09f6c265ddac9fbacdb3986be1b16415d1775a9aaa4a4b16111766a01400d6362202b39a0149c53e8f88d218'
  checksumType   = 'sha512'
  checksum64     = '06b4e54fac028fd36033db5577f675ad3ceb646d67d1b285c073a247ceaac768b07f4f5081788829f055ba00349047a87aa0def76bb681653491082a7a21361a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
