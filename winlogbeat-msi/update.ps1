import-module au

$releases = "http://github.com/elastic/beats/releases"

$PackageName = 'winlogbeat'

function global:au_SearchReplace {
  @{
    'winlogbeat.nuspec' = @{
      "(^.+version=`")(\[.*\])(`".+$)"    = "`$1[$($Latest.Version)]`$3"
    }
    'tools\chocolateyInstall.ps1' = @{
      "(^[$]url\s*=\s*)('.*')"            = "`$1'$($Latest.Url32)'"
      "(^[$]checksum\s*=\s*)('.*')"       = "`$1'$($Latest.Checksum32)'"
      "(^[$]checksumtype\s*=\s*)('.*')"   = "`$1'$($Latest.ChecksumType32)'"
      "(^[$]url64bit\s*=\s*)('.*')"       = "`$1'$($Latest.Url64)'"
      "(^[$]checksum64\s*=\s*)('.*')"     = "`$1'$($Latest.Checksum64)'"
      "(^[$]checksumtype64\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType64)'"
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

  # $url = 'https://github.com/warmuuh/milkman/releases/download/' + $version + '/milkman-dist-plugins-bin.zip'
  # $DownloadedFile = "$PSScriptRoot\milkman-dist-plugins-bin.zip"
  # (New-Object System.Net.WebClient).DownloadFile($url, $DownloadedFile)

  Invoke-WebRequest -Uri 'https://github.com/elastic/beats/tree/7.9/licenses/ELASTIC-LICENSE.txt' -OutFile 'tools\ELASTIC-LICENSE.txt'
  
  # $UnzipDirectory = "$PSScriptRoot\milkman-dist-plugins-bin\"
  # Expand-Archive -Path $DownloadedFile -DestinationPath $UnzipDirectory -Force
  # Get-ChildItem -Path $UnzipDirectory  -Filter "$PackageName.jar" -Recurse | Select-Object -first 1 | Copy-Item -Destination "tools\$PackageName.jar"
  # Remove-Item -Path "milkman-dist-plugins-bin.zip"
  # Remove-Item -Path "milkman-dist-plugins-bin" -Recurse
  # return @{ Version = $version; }


  # $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
  # $regex = "https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat--windows-x86_64.msi$"
  # $url = $download_page.links | Where-Object href -match $regex | Select-Object -First 1 -expand href
  # $version = $url -split '\/' | Select-Object -Last 1 -Skip 1
  # Write-Host "Version: $version"
  # $url = "https://github.com$url"

  return @{ Version = $version; Checksum32 = $CheckSum32; ChecksumType32 = 'sha512'; Checksum64 = $CheckSum64; ChecksumType64 = 'sha512'; Url32 = $url; Url64 = $url64 }
}

Update-Package -ChecksumFor none
