
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'c7df9fb85287c8fa619bcd876bd6b9339e539f7af53d1ad6cbc7f24f23f008af5b11f3629c46e5e3e8b348540ef409bad9d2578da7671df45b0a39cad1fe66ee'
  checksumType   = 'sha512'
  checksum64     = 'c198fc4310e6e1d4a1fdc39f34f859815093f63d40a942c34725c9045340707585abcb945f5da075609b8aa27d15f05dd791e48a9ea76dd578fbc81d220bbd27'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
