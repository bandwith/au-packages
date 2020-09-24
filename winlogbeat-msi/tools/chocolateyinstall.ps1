
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat-msi'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://somewhere.com/file.msi'
$url64        = 'https://somewhere.com/file-x64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '12345'
  checksumType   = 'sha256'
  checksum64     = '123356'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
