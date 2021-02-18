
$ErrorActionPreference = 'Stop';

$packageName  = 'winlogbeat.install'
$toolsDir     = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.1-windows-x86.msi'
$url64        = 'https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-7.11.1-windows-x86_64.msi'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64
  silentArgs     = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'Beats winlogbeat*'
  checksum       = '296a561e89e2781d9180d2fa7a58544d4bda66ba2432d301003b8872caf2415b86833b97e2802f53df084ab9b1fe06c199b705f910d87ac0a510773a57316712'
  checksumType   = 'sha512'
  checksum64     = '7cd8587427eee94822533cc7d97fbbba28f939c6190e67385e60a7c41c2f8cf13bafb91ca6918c4f49a35d25e8538ad9aa976b491087a533bf9e0f72538c2b2f'
  checksumType64 = 'sha512'
}

Install-ChocolateyPackage @packageArgs
