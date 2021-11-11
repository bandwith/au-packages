
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '512b04b677d36879c5bcaf334211d3ac3989cfa7503b737a3f8371ee028a9be171bb4482e1d3529be864a83087e5fa751f6ac6494d9d4b41914cb17c13c47d56'
  checksumType   = 'sha512'
  checksum64     = '3667bbb327869afc395c9084ad259ab2de7d62c7851b83db8f9190c420154428bd0004c09c356dbf6a785b6178c79edb69b9366b625dad9a4baf61b8dd8eac30'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
