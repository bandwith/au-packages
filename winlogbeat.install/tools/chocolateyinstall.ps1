
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'cd55773468658d55850695cc0a408e90db8092f954e2871ffea23e1e95a21d62015cdefefbfb935993e5dcd263a2e1ec96d039795a5d0dc519ad10c7e5fdcca4'
  checksumType   = 'sha512'
  checksum64     = '30ccc2be4df179eeb12db94a1e134ffc804c58fc1be3b004e5de0365b0e60ace86f5f54c837c47f3b7d4b6abce92957c37ff41d19e5bdc10bb29e3fe3fa782c9'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
