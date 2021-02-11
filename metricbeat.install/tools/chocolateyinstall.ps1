
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.11.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'ddc7932e0534e4d41c093849f1e0306c87f7d55a0e9707778355d248a5b2d00c2acbaffacc43363471f6aeb93b112a02ffb73f1b4159c4a2b4181ba029f217f5'
  checksumType   = 'sha512'
  checksum64     = 'ef4e896fbeb3bdbfe4eea8c9d332446f89a3aa9e029b218846627cb74bfbd7913597cd9293a3257082c96191acc06d429373622a074f9778208c6402ec5cdb9a'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
