
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '0ab42a20c3320d008f072472a6517e51679a52b366389ce86080e0c16a929e9d054f265e48fdf30db47f9e0b6bdc884fd2cb42a541326ecbd9f024d192297834'
  checksumType   = 'sha512'
  checksum64     = 'dec3e718f44df18f292adf0ac77233d931691bc9c7c0d867048173f351ec933582dc6bf2271d1d76533bb9f7f5829faad118fa26620b846b87ee49cd65eba770'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
