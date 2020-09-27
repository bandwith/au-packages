import-module au

$releases = "http://github.com/elastic/beats/releases"

$PackageName = 'auditbeat'

function global:au_SearchReplace {
  @{
    "$($Latest.PackageName).nuspec" = @{
      "(\<version\>).*?(\</version\>)"        = "`${1}$($Latest.Version)-beta`$2"
    }
    'tools\chocolateyInstall.ps1' = @{
      "(^[$]url\s*=\s*)('.*')"                = "`$1'$($Latest.Url32)'"
      "(?i)(^\s*checksum\s*=\s*)('.*')"       = "`$1'$($Latest.Checksum32)'"
      "(?i)(^\s*checksumType\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType32)'"

      "(^[$]url64\s*=\s*)('.*')"              = "`$1'$($Latest.Url64)'"
      "(?i)(^\s*checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
      "(?i)(^\s*checksumType64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
    }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  $regex = '\/elastic\/beats\/releases\/tag\/v[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}$'
  $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  $version = $url -split '\/v' | Select-Object -Last 1

  Write-Host "Version: $version"

  $url = 'https://artifacts.elastic.co/downloads/beats/' + $PackageName + '/' + $PackageName + '-' + $version + '-windows-x86.msi'
  $url64 = 'https://artifacts.elastic.co/downloads/beats/' + $PackageName + '/' + $PackageName + '-' + $version + '-windows-x86_64.msi'

  $CheckSum32 = [System.Text.Encoding]::Default.GetString((Invoke-WebRequest -Uri ($url + '.sha512')).content) -split ' ' | Select-Object -First 1
  $CheckSum64 = [System.Text.Encoding]::Default.GetString((Invoke-WebRequest -Uri ($url64 + '.sha512')).content) -split ' ' | Select-Object -First 1

  Invoke-WebRequest -Uri 'https://github.com/elastic/beats/raw/7.9/licenses/ELASTIC-LICENSE.txt' -OutFile 'tools\ELASTIC-LICENSE.txt'

  return @{ Version = $version; Checksum32 = $CheckSum32; ChecksumType32 = 'sha512'; Checksum64 = $CheckSum64; ChecksumType64 = 'sha512'; Url32 = $url; Url64 = $url64 }
}

Update-Package -ChecksumFor none
