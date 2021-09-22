
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '846bcc14f0f69c06d37652da6feaa2b71bd3cefcb84199fc27499fe5b8c3589b52a6486a322d43a88a09da79d8ee80be961d4f8f44c4dc7e6347fc12c586dab0'
  checksumType   = 'sha512'
  checksum64     = '64c0720558087ba20638399e8a0c8fb0448bb73fd5bf113ffa050d51d883f14e4617afb8eae3a72d9207f70afa4b9df4a839a1fdb026fe4f121960c2e996973e'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
