
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.15.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = 'd323d7ae706c597febf362685a18b886e74707de19fa96f727d750762911125108faa07e8999419c897bd074cc3b4c2228bb895da3210a2243ac671d05dc6f15'
  checksumType   = 'sha512'
  checksum64     = '35194f310ddfa917c980b0d233a4d8a2f223411bddb56591d369672a80c37209fc2a07aeecf4ec01df8b620a96c94fd3dd80f499af3f97ac21c4b30f73ce8c49'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
