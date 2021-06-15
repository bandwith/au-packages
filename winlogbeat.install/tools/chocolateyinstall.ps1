
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '246fe57ef1a89ec4a496552c980969c762289bd90f949897ce55ae749c1d1bbd4107be04bac77dbcb5d1a97cec7cf921013f37011b598de0943c3f0e7bc11a05'
  checksumType   = 'sha512'
  checksum64     = '3008877ea3ea3aacd2d1593526aeef320b1db7f699892466dd03818cf58b222325b6a74d189b193e2aeffbddd01511bd23a479379fd453f59e37d38f62a1644a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
