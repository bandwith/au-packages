
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '0b1c42883a17dd6b04129a6bfa08fd6d21b9c892313ea2eea7d9356ecde85d7964a98d0f56f8ed27adb01d0c23d61d0dfbb2c0cf1a8cf89cdc431bf045876cea'
  checksumType   = 'sha512'
  checksum64     = '6cb30fd9768cd576b30a78437f29119bb3ac02ab1a633d4685accd7cbfa805c6d58136c62cb0fa0f4433465370a748f4c166f25cf3d5eca6260e818ecc323e4e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
