
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.10.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'bf5598f30362bfe7ffc019679a316633ca839edb4355aa3e53ea8b822d319f5394730f04820017452daddffc310f5ca732104e02b6d489b7c417080cf08a4f8f'
  checksumType   = 'sha512'
  checksum64     = '6379accc9f095967dee3521ac3ff0fa45fb3e51b4ab20ec285f147ec9784254a6253f047dcbcf7f07057faed4d7919de48d2657bc7791c50911086854f8b272b'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
