
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '1a35f00c4f0fa7b2b1de9eef2514a8321c32cbfc2e8282298adb66b3117d28e47b61415c407956bdb14e08ed7e6fd55bb0928f95236cbbefeeb392e9ac0c9715'
  checksumType   = 'sha512'
  checksum64     = '4ad1014c846f2dc21e614a03387784369445ff08e1e42b02ed8e30c88659196c5bbd92805795c6da5f41f54f18a691923c10bc2b212d304484bbb193333ea597'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
