
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.2-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.14.2-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '9d650c4849d1cf26f0273f57a6fbfe9a5d08378050672139cf2f72ca491d3f1b2d360b46ca792da55c6848e9597cbfb242ad48c6cf066f74bfcc6771697785a9'
  checksumType   = 'sha512'
  checksum64     = 'd1e54cb7ad7bd523fb86e15f332d3c8cb775ecff2bfb569a48287512300c20f2a9dcf4e19903ea3cbdd6a801310c8ea6bd10b68243ae223e8480c8dd0a6779c2'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
