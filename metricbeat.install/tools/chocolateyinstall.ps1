
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.14.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '37c70615e02be92973a9ab8c2e7891cff443809a08a7297e7954500931e942ce44b89cfee3fc32bdb206205b5aeaddb3e1002a4c5327301cddc36f5611ff892e'
  checksumType   = 'sha512'
  checksum64     = '83fb8787d159bbb290765c68f999c26414b213ea955db6f57963aa3dd9ceb5803e03f71658a15b2e8316753d74a7ec0f0509604f16d84619b63f0a5779b6e8f9'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
