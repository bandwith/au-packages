
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '92a2f897d0b09d10fc70ced3efcadfe7435974aa0bd04eb229bba6a1948985d2529965c17e134e901f2bdb4a42b7808de870c9c2bfd8d749ebed4f3892ceb388'
  checksumType   = 'sha512'
  checksum64     = '0b2097411f3bba7e87cbd845755eee0baaf3d4754da44791ba829dc34a78b84e4fae8abd269140b79378bcd163fecf6582f575e2f88bcff6d3b9f1cbe9843abc'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
