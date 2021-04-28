
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = '4b1ea17a11609257debe45dfea5e75eb38816c23553ff5b26632962617898072e7183a75deb1fb41917618e60ceba1c1cfb991f39bc2dc289182d8b6779cca04'
  checksumType   = 'sha512'
  checksum64     = '32782774eb3dfd1e2690c74936281c95159cd9fb814da12c70ce6664e20695be9dc48ca10363d20e9c12d14645eba395884ebbd7e2f3a607268ae79cc4a1510b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
