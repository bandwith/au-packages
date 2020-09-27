
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.9.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.9.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '7ac97fcef806f4bfa61ec75c9da78e5d9394de89a0af44be388d82a2ff5060c3372b8d605da36771d76dc85c94edb871cdbf89331624660343ba2c570a00a208'
  checksumType   = 'sha512'
  checksum64     = '1d86519113d8df644707376caf0010cf528d8b80485cc534406670cd4c5260ca736adf1e0c51f17e8b4ecd5066e326dfe46fc89076491ec9a86cdd2dd577c9e9'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
