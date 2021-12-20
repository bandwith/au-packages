
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.16.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '3e4063946b30bee061622ecfd39bd760edc950ffef9495c74bd927e9d1f8015d5727474fe2986c23531a2a958520c17e704f046c17c082e98f4dd010ba507284'
  checksumType   = 'sha512'
  checksum64     = 'd91294931e9cfce8ea3c5174bba45d5db3623d2106d90afe74188e00ec1908068565ee228d6ccda7d20729c369de2a04c36815a1c5f6047953e23e592ab2889b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
