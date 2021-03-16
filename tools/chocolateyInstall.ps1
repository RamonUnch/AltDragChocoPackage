$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltDrag/releases/download/1.40/AltDrag1.40-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '95058B927BA16BCDEB403A498483D8F89812990D1DC2B44B950EDC682FE66239'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltDrag'
}

Install-ChocolateyPackage @packageArgs
