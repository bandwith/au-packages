
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '84ed8ddef7101d8013b4f806641df63ded82208be91c4077b8184a038c2d734f0b59de9a0f24f7bce6e221d7360ff05e45464ea61aca5eefa6575db023429179'
  checksumType   = 'sha512'
  checksum64     = '16c5a2ea7f544b3dcf3706b8791e310e06384fb28451c97ceb3260e91f2e93fffc714ebcca8979891eac8f6ca0541d7a4106ef2341b927ad847683e7590ea804'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
