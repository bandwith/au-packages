
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '8e62463c3c48259c17fc3a8c0c35204efea33418df57e1512f5539d1aa803f72488fd52eb07516f08c13db0b56800f8ad3b196ac0a5b3f1cea5704272f7b7a22'
  checksumType   = 'sha512'
  checksum64     = '5ad48e63ae8b4a69867f5f38ac81376f25fddb3f0a335c3315581a922b49174d9610faa00521e27966fe998a8a5d69f637ed0b96fa05d460275b28a2b52ead5d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
