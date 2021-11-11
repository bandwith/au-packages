
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.15.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'aab2a09210d53127054d2044c6ca88330cd742c5e072e0551b0186d8439a59961f8499df92bf0e415d104d38282f2efd896eaea5397c30f2cb5531ff80017c30'
  checksumType   = 'sha512'
  checksum64     = 'a8d5c73d6a5debb8a689e2c88cb8bc2083295c1787dec3aee432bc5b89f1310e1b6be3028ea02f08784550c1f4053839a50146358e9b7a77c652706fb8877d5e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
