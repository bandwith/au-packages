
$ErrorActionPreference = 'Stop';

$packageName  = 'metricbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats metricbeat*'
  checksum       = '8352bbb102501c24e9779fd722c6c7ff982ac5796755dc83d0aa8751090271f1030a12f26f0fe767d8880521968511938e58ffed78d032c726a47733b1fe6247'
  checksumType   = 'sha512'
  checksum64     = '5ab1dc432b4fa6b6d4ca8ed9e53eeda5053840a1ec491a06bb8e5510726c64f0a8cfb5139c58685837d4bdd8e7a0d777838410bccb37a29d55d17e5c90bb26c3'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
