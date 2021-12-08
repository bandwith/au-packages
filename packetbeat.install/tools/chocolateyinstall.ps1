
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.16.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = '1802371d56b3ae6c2459f0b44066ad0fa3d6032b8d757df3e490b14c4fbe1fd200b00d001baa83e309e0cbab6a4b4771c74ab77bcdcc97e474dfb48fc64f3775'
  checksumType   = 'sha512'
  checksum64     = 'f792ee576a3d7008266f2baa7cd64e6252c4190f73bd2262188ca3029e2fe44bd4ee51cef6b169c9eb92c4bd05a17db3a194b68103215f876bf97cbde7f597ba'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
