
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '763322522242bd533213919f275e755f5ee7449e00257384669c25734cb8cc75f9e7c1cb598fd954436d490720be9ca5e4245997225798e832382f669e23ce66'
  checksumType   = 'sha512'
  checksum64     = '3f3f86dea3771f3f430535eb99af28dc507cce97b2d6e418292e857f4e999096d3a8f6bfd045ce5e17e6892968a1c554038c9ccd3f8b53835d25bd77686ebbb3'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
