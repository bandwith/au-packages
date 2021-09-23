
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '4cd7540552ca39f186566cbfaa3b239513f738a9d9a726a6cb1c51f3ef7a461afe8409e5557c408ae9eba7cf97d68da490bcfaa711c8c8016b060f108a3082e1'
  checksumType   = 'sha512'
  checksum64     = 'a8d4bd3da29c115793989c821bfd93f5fdbe2cf2a29e09ea281641def143bf5a6371557b27e766735dd4387e4d72168ae7f197e0f2691bc91ac77358e33477f5'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
