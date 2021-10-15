
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'b4da33a3a0a2208071d44ef26f4576e084925fab8f01c6829b9e8f65222c0abf68677f262436269150e7adea82a484e3e05f402724d62b853b4618ec169c00ee'
  checksumType   = 'sha512'
  checksum64     = '6194fb8abcb695b0aeec174a1468a3b8a6cf68bf300a21742a2838b428d6550bbe3afa081a24607b96fbbbf635964e38455e60382027dcb54708c722ef3f2b7f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
