
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.13.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '9bd274fec5656845bd59fad1d05b80786acd877acb51e80ca0982d5393d49c26d27af6f3f92d92b6d15d1feac0b9061651215061d7f056399fa7fe7c18a10f42'
  checksumType   = 'sha512'
  checksum64     = '0e2baa6c80d63e833a63f1fca44d37ce8993b502f92866f7c275c259ff1a7301f6880dab9ea8446e516f3e4c83e23aea809debec8a0120c2e4f4dea61abf83a3'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
