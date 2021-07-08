
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.3-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.3-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '2e33bdfa4c1e98421784a909744a76965484ef30138d9d9bc7dc0213d50102ef4b41ae089f65d10ed7cab55fffaf8e49cfa96d78d2bddff8f460360b1864a1a9'
  checksumType   = 'sha512'
  checksum64     = 'db854563e665b5b37473261f0b757fb45b505a83517022aee567b6e84e2f5993053ca8c124b6a3377c790e3375110d980d2079bdf917090a5bf2ed6bf479458e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
