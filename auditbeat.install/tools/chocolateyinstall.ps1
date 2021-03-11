
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.11.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '11ca0f86fab5cf7d9d413c442cc895683eab6367e0abc0ccde3f166bfca48bb97f357e9c6257c2fdb3901e0ae168c0141ad804469e7aa387df6de6a8603d70ea'
  checksumType   = 'sha512'
  checksum64     = 'ce54538afaa8651e7aaf3094f84b90a4ecccef47786b5def913929ae65c4a4d1894ecd496470df1053fa04c6923549fd5e6bf843ab0a9a1b88aea805615af13f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
