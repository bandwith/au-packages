
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '43519742faa8a61eeb2d6aafb9c979709bad4b5335be3a82c8cba351bc1aced78d0c9ce660e37bbd83370fbe4ee9ae6005288ad0992d083251754bf0d606fdb0'
  checksumType   = 'sha512'
  checksum64     = '36729cf2ff00f2cd32f5d8519db766a82c820a1f82ef63fd20016016e5bebfc2781d949f89a848a4d46ffb69e4a3b220fb3678c561e87aedf4c7da2dbdf11010'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
