
$ErrorActionPreference = 'Stop';

$packageName  = 'filebeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats filebeat*'
  checksum       = '7a308628a87e43a78b8092195fc5f81b50481d687206dac33a7c263079dab633ac82d8cd8680a7c500d673cf3b42f18601d3d5493da52cba3cc952176013b468'
  checksumType   = 'sha512'
  checksum64     = '551376d75c78e38e821f9175fbe52dbe2e02571f530891056e606d9479665c555f36435ca7f9d0b62d764cfcdfd61a2b652a2e2ad8d872b0c11c601d3c308abc'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
