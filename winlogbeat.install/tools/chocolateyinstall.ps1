
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '5d35c36e5882660f0509f53462bc6ed47696e8e607da239e73a8bf04f93feb3ad51b6deb1cdb71ebf0ea9a36253a3192447c07c8a9bc27f759b565589ea8992c'
  checksumType   = 'sha512'
  checksum64     = 'cb8c04de2a79c0f6e973f524d31f42619e14c2e329e0a85371d241c9ea069b255ff347e37f45eb69f0ab1b1aeab4ec4af667bb2bd8ea9e6e3ada8c53869172e1'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
