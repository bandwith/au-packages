
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.17.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = 'c182b7818a02bab748173b6f2d48c55421e2783abc8609ac889f79731962936fd4ebe1cc3b686265011b73a076956f4be5d776231a3b421d5379467c9119e9d2'
  checksumType   = 'sha512'
  checksum64     = 'ea37a752e52e898e0d1731597c2a4e7748267307bba0df85cb4cd3c270429753859a11e08d05a25faaba041a598a185eab5e75633e06be80cd801d4566ab7245'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
