
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'b9d601bb9192b74b5f1eda4f4de5d9b1216a759a0b8c15a8f1346262b792788e7403dbe49c6b1f9401ff4a1a6119adb8201527d79072d9f4bf9464167cb54992'
  checksumType   = 'sha512'
  checksum64     = '489a8b8f8826a7128d4006bce564f0b4ddedbb5f6b972abcb87e48aff2a0ee557b08738f2d3a6eafa175c8d45bd455fc6483a7e65a3e8c16ea0a4d39577de2f1'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
