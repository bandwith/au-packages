
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'd45b169e51451c54a841d25beb22dcb765c4665d3c0da653a8d8ea779b075ab4f77f33e11c133fc74a20d7c7ffd22bf2ed63db47cbab73b763563b1089088ec2'
  checksumType   = 'sha512'
  checksum64     = '656c87624d228bf022a74d1989382ad87dc313d7f52219d0ab485969ba491716a3d2e5b19603ea692935bdb41432e20b7b510da7aa345f3960ecd9f289e1417d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
