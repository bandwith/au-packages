
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '37cb05e3eb5b74798ca22887ed376796d0064d4f72a56bc67078b620fe45bdc486a44acec114ae13c6cef66a984fa5fa53a1ff27690762114c35471591506433'
  checksumType   = 'sha512'
  checksum64     = 'c871f3fb2fe2cfdf6b0c4d41e700b533e73ed5cea853a080aa747008bf5110380f02593336b3ba830f2d9eeba579e2d578ab44f259205a388dbe18ef527e9122'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
