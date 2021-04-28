
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '0ec5648e382fc11b289e364fc58cb41fe18ba8d6a9710c872d294f340162a99e134be6fcfa60f861a04ea77f7773936bfaff089e3296ad3828b67cbfff8eed07'
  checksumType   = 'sha512'
  checksum64     = 'ce43b9b260214d2292cccc21daa9c8583025ceec117c358696bc4d86ad7026bbf39ae7c92773e629aa24a7dfcfefa7f0e3a1c1719bab94ee976c2177a2b17490'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
