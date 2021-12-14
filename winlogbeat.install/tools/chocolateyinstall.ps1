
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '995af23eab1df8bbf63d14c999e88d56061f165c4895914bb6afcad559b3bacb8ae242831ba4b7ec2c16ac5b55c025fbac0111b9bd1d827e8dc768e5467ffb0a'
  checksumType   = 'sha512'
  checksum64     = 'd8ca775c86bfb204ba441a9b6c57c935f844f731bd1f532c3a727756d05b7aedef380918ed84ebc51cf2c89870aad1a57d54656b81789871718ecc6c1d78d45b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
