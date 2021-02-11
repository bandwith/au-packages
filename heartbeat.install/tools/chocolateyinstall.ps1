
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '484ff808ea5713d01a6dcbdffa6c1ddacaef3c447ab20cea80e702218a35eb7530093c3edcf20b86e2ee0dd4000fc3df10d2fd316d43a46738ff3a903d174a1a'
  checksumType   = 'sha512'
  checksum64     = '6f202d2e85c194e248db038245f78031d7bc279a8a07db998cfce49b13dfd77a6564ff07d06f4a893aa4963fee6e234123dd16c9925a8b8bc7d33b5dcce5761d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
