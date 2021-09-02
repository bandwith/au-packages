
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '62be8d28f6e994a4cfa6d9055a6c1968bc2a4548a80e91ca9b42ddff6f9cfb499b993f1b77cce9e5490830e99a42480b27e33b5ade41bb42a61c45ee9e7e1dd0'
  checksumType   = 'sha512'
  checksum64     = '1bd50b1941e92bbab916fd31fe4de986031355f431f1d817e21663a71e5229e8eba62f2446ea989bf93f18812f0ea5fb2b45115824e06c4a9bc2fd067286d819'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
