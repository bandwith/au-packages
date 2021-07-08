
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '515b22b65c2779ae3a8244ddab537084e46e0590d64787def53ddc57c75ffa487ef5f002ea1a14ccc874fc264ce95fe3627b9473aeb72b43ec78ae8eb1ff1351'
  checksumType   = 'sha512'
  checksum64     = 'c66c757bd563c24c6d9c60b98e9ab594bff675720e6b5c05cc1b3c751878e8b28cf06f5d0f609deee53ee0c9dc9bec8cd137a28ae06c61583ce76d863185c40f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
