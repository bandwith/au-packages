
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.16.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '9056594bce08ddbb27c3dfe4f9eb5ec26dd8f238d41add4f72f8350214ab2e5be32cb82cefea296c717e0e93281004737148763403fd81752de141bc89cd579f'
  checksumType   = 'sha512'
  checksum64     = '8cc6f408b793aa8e8cb060dc8436f6522e7e02f735a7fce8ffc4b783fdcb9ab1dc3db836e595a94bc20f66343fb146a1df559e0c0c7360f7c410364e1ec56a9f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
