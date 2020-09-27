
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat-msi'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '7b0bfbf6805c96b66f5bbbc3bd1dd83655527ac733659f859c0618cc56bb5043eb2c847fdc48b518932a117e7af5a54def6ff95f84f6aa5ebacb5649ef9cd747'
  checksumType   = 'sha512'
  checksum64     = '44789ef9b557d3b35afaf8158dd6b189c23463b177fd8fb8cd9c694f1cf8d30c6c173c5b05bf6a2dedae8c039ab5cf062b81ca280c4bfa5f6e2f3f1771386e01'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
