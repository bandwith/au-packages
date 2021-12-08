
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'a55b6e5f575748c328769083a1fa6989b1b45dce9c98ff5599eade47e2b3c6ecd7fc90ba647b3454ffb309366f567af2ebc20bf5e819f51a57b775625cde7504'
  checksumType   = 'sha512'
  checksum64     = '96be7e7c30cb1df98436517a0b17105c7ad316b052c3c2323cf0ddb8bf4456f97aea4b5149da7d984a9ab8193058b3396be617f2f6bd51f13996f7672cf7246c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
