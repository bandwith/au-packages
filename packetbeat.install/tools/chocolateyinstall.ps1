
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '00948685488f2369f5b6478bd150caa128964b658b9fa19fbde70c208f3bfdf515091ec46a0bf9633a65940e92c44c5388920d807e738225e59577d0bfd4e6b5'
  checksumType   = 'sha512'
  checksum64     = '98a7a094b3bb9777a3939b19f6311f430aeaca3a13c15f30c254e0cf4906a8817e9eeaf204e72f53c8c8039dd9b04ed4e9d464fb13f34a151df2e2ada39bd58b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
