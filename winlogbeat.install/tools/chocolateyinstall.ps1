
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.12.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.12.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'eb3fc3c52edf2ded2699cb49bd8d4061d9a54b6c4b084690bafd1600cc508f55a136d1a852f5558738a55d4c474bb5ef9c6aae8a3de2ce653ce138d2852ed936'
  checksumType   = 'sha512'
  checksum64     = '9b73b50ee59fb271f8c9766f237e61ec5930ab234376b619ea79d97629b888375389ed1c6ea1c99df4be5e788357757f421b585ab8fb13d58822290ff7282e0d'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
