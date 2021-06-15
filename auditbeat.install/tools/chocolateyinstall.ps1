
$ErrorActionPreference = 'Stop';

$packageName  = 'auditbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats auditbeat*'
  checksum       = 'a8c0213e09f4ce6aba528f7c8016fd75b48093e143a250b9cac29e4c770685bd481b447c353d19eee13c2193a8daff2540e7ec2422dbd69fda95d33c6069a022'
  checksumType   = 'sha512'
  checksum64     = '3adafa1ce43bb20b58354cc337d93969b313ed30cee8dc5fb2e45f8d9848a11788db04559e225bedbf71ba62655b5ef3ffbc27aafbacd3692b92e6c5749890ca'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
