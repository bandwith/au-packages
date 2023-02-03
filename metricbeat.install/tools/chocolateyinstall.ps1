
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.9-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.9-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '13a8203895f72b2b0b7987336b8499915cfc2e63d6353fafe6c00483c3901d61ef2673316b147430e6b524b3a586868f3a01da4b97b81dd1cc69a189e06ae9ec'
  checksumType   = 'sha512'
  checksum64     = 'da8d8d6b89ee2d086d9deb9ceacf841d33217d5a2e007a64ea6e6c005eb1c8dff1710f0bd99286f22984218de8b267b127ed58692ae1bbb5d208918f814dfbd6'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
