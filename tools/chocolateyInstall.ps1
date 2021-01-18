$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltDrag/releases/download/1.34/AltDrag1.34-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '68992A5025DDD40A4FC16FE71180C9F9F03EECDE331FFA5CAB20CC7680978129'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltDrag'
}

Install-ChocolateyPackage @packageArgs
