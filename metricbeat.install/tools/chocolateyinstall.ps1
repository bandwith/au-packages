
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '7a374ffb4ac27919a4c797c6db7cdb5cf4f2edea136e444b63ea00744f1271ba663bb350823c0eff6a8373036832be37135650fba91f27307a08502cda0bb4c7'
  checksumType   = 'sha512'
  checksum64     = 'be6ff1b8ca494732792f884cb6d70a90fbef6c778a51c3905d1731ee2e688f1682172c7357c80c557a37cae0a0f17ceb9f04736a33f5d44caa62eeacddb3f28e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
