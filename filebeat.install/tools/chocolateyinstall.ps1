
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'd38b2ceba9555b1946fe4281e9a413004d5bd018e779f93b13b75d5c486bf4d68e4ebb681b1ac2c7d2a9ea89151c69d9206e2b62bb86365fd1b6d29a8cc7cb0a'
  checksumType   = 'sha512'
  checksum64     = '414dd4628f07f057a68b712c6a32aaae386c5e45fa360e19431baa1174544d51bab59225af3ba007baea83476666f562bb643e315b52a1072ca57f17b6524a6d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
