
$ErrorActionPreference = 'Stop';

$packageName  = 'heartbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.4-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.13.4-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats heartbeat*'
  checksum       = '648d92860fc36f3bc7ca6b481a6c269ae918b0627761a08d49ce9bc84d142053647659719535086bb95c65180e6f0fce9784ab4d09f97d9f3b68215b57ce093b'
  checksumType   = 'sha512'
  checksum64     = '31338a93b8f6d07ba9074c12b74e243d05c7f16fd0d4eaac3a6706ecc6b8358679b8c3c81115861df232a706aac548119e30084579486d9aee8979add1d9ab56'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
