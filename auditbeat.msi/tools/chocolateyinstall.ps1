
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat-msi'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'adab31f61c4d7a5e7972668e988da5b59f7eeb18d96b96698af60945e77b424f34df9a8268fafa2d9ddcf0cd1a5c8822a4ff1b54d4e893e0cd4de03ef0ef6ebd'
  checksumType   = 'sha512'
  checksum64     = 'b977045c89db0eef6fd903962f8b268b57b44f8b1ae5fd91cd8c9653139890f7651b6b6443d0c874f8ca229a45208d8cb5bb6aa25b9d800601d35493a4e5316f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
