
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'eba2552a9d2fddb042194dc624e674215792bbc2d232850170fe193a310fe4f131d0a76e1c9aae8a2141e5ff994871fdab9a1a8d591e854622412e05ee29ce94'
  checksumType   = 'sha512'
  checksum64     = 'c64b9a0bf613bd5857a113523bc7ee4ce558dd8af7d49d01da3db9de91a63e27746eae38b80d2d7ae1c1d899a4790116be68860fc527608e9dcc2b752bfa464c'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
