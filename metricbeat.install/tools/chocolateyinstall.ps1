
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.7-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.7-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '78411590f6e0f0430359d92666e5964ce032b3fcf5323cdeaefcd4fa3b9f50ac0fbc2af6907c02ee20ef930a51b4666d002c0dc5626545a092d09191b0222b71'
  checksumType   = 'sha512'
  checksum64     = '70867a61748a8162ff7b10d5cb9f316939d75159a242adfd1b3b48a88820ecb5e3a4e6228aeb0d062170c6ef8b9cb3895ce617f208ae38df9eb4ee36743bd4cd'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
