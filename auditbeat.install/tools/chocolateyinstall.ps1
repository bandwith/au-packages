
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '495cb4ebbbf598197caa36bed4e715fa6803165a4c9f79f8932184990473dae8f1b1d10877b8d0b411ab4f309c7687124e4ac0ab3f47752f4c90ac3187865e41'
  checksumType   = 'sha512'
  checksum64     = '5d41d3f4ae8f442ae879636b2941985d5777f2029650005b2f9b694d93dfe8e565c31868a578104b4085f2d0f1af70e2401bf915f14af400a7ea034af834657c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
