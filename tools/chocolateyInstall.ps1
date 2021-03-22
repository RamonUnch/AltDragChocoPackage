$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltDrag/releases/download/1.41/AltDrag1.41-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = 'A26BA1AB408ED4C7F90D33912227FDB0CFFBDA5BB1D7AF5D9928878006ADDFFE'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltDrag'
}

Install-ChocolateyPackage @packageArgs
