
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.12.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.12.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '6e7e52d4c4979961b78351e241bf47503681db6f23d25e39ed87c5519e8f3224192678ccf616b8c325b7a6ac34a9dc717d44892af0dc740cc428009bdbd7b68f'
  checksumType   = 'sha512'
  checksum64     = '1a9c425f24791e49ff76d81d7a0778c844461f6c9596569d975a41ae5c7eeb9813a4647070065c5679dba6149e75fa5b7d0f1d2820b633edcb75ce00aa4044f1'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
