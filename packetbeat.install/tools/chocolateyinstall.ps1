
$ErrorActionPreference = 'Stop';

$packageName  = 'packetbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats packetbeat*'
  checksum       = 'd4de5796445f780b4287fb79be989a2edfb950710b02a1afd3e814f0c63d114317755abb0ced3ee387eeeec31605c0b062193f1c4521c5a574c9f13783c5f691'
  checksumType   = 'sha512'
  checksum64     = 'ddaa475ff3a90f446e3f1f27bf6820134497fa8656fd1d1cb426240ee5d7af23f13ca4f48d48f77a36042d11f6cb5d92b683253ff722a087ae26796ba2fc3427'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
