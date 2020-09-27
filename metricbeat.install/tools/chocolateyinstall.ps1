
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '53a5c4c9a298efc1c2f57a7e5178714222488d792aaf73cacec7b9b70aa4daac649f613fce56e6e1d743db00749a1caac3e40a5266a413f71d18eba371c5b944'
  checksumType   = 'sha512'
  checksum64     = 'ef3a2543a76c4f2795743d3030c23d7cb5e05f42a619487f7bf9d4a41f97840fa2c29e616c0829e16a4770b71cc878388036fe1aa192e646816eb876f7451de9'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
