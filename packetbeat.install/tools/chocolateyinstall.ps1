
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'da64c1fe2425bb568ad3ed8eeafe04c7b252b468bd93ef6853ccbf9aaed75b3b75c9a9467d85176a54241f3841fd767197030a73e7da14bec03f77be05d6677e'
  checksumType   = 'sha512'
  checksum64     = 'b5b32cbf95be839a391dd2375ce294cb97cc98e09e3f62ec9274c69e727c593587c3550879238acc23a84656843b6427159387baadce00e7e2f9edbbdf1eab52'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
