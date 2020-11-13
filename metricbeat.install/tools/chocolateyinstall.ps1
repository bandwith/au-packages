
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '0bdd4052e9aba46c63b748691f0ae23e0152b8912d656eabe379737425ae3b287976a1724376469331d6a8859a7ce019a5d6623c6b736e180790c7b0b80c9986'
  checksumType   = 'sha512'
  checksum64     = '735560ca71f7db1d8ff4eaf3e546e91ba711fb5d1c9c81344af02cebdd5182157a9b07d228016ed32cb3435f7a86995b43c8bd2d4c11974aa19accaf381556d5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
