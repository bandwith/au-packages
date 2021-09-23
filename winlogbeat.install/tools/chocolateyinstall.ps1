
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '7b151bec49f5b2c46109536d6f8aef00ed174e0fc33d3929677baa0522c0b2bf2e4855425b05e55e07b228dbd0ea929427d1fc83454a9ac8ea9170c1c9be4cc3'
  checksumType   = 'sha512'
  checksum64     = 'ecb7c993f0f0396382ce9a12d16ea5f692f2871f592f541b944a26665017a7c4a888bb66a66fd6267ce9d23857fef8b038d3ff64768a23925df6c5e24e2f6914'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
