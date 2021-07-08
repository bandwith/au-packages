
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '6aa30d5d94e7420beff9b2db9e39b83491ca23fbf770e404137e8046058becb3b76cfa4558826fed81b0527882abfb64ae46035e1c8601f5f8924a279deaa053'
  checksumType   = 'sha512'
  checksum64     = '6886b460cc10393d1f5604051b5243aaca48666f0886b2b4331011737efcb38a567515e2fe8f872d1f70470bfbf473813bbbd69da8ebcdcb2564a571fd941add'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
