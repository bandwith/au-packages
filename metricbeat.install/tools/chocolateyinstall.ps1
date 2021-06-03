
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'aa4fc6e726d69322bbb7c263548240fa7b7dde6c25f9a207f94df884cd92df2ed47aea41e06bd739056d38b401a08be13f3d30c5a88a2b5f3242e1ab3d99c06b'
  checksumType   = 'sha512'
  checksum64     = '7b6b9d283e243c4958ce45645043c5607f5dc51cae81fd1b867642f31e62a562d5e77a2b9d80f1b218e1b8111174d8cc7c3b65941942ac802485a7730436271f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
