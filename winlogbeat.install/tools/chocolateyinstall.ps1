
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.0-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.10.0-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = 'de8c5759cb53fd074509255605471627f2f3f968db4eb459a229547a9c3a397dc31e21bcc3e018e3677b9a7c49a1179723ede8290bc94ef9f2e43228c757b909'
  checksumType   = 'sha512'
  checksum64     = '65d5c4cece5242461da41e64d3d731b590795f904c070a28eca356017c30c723220f9b9cce32acfedf3343689de60d5fd7b7fd1e9b695236e4ba6f3335f941d7'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
