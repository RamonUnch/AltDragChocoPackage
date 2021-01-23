$ErrorActionPreference = 'Stop';

$packageName = 'altdrag'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/RamonUnch/AltDrag/releases/download/1.35/AltDrag1.35-inst.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  checksum      = '953506AB5CD7DA97BD1565C0CCB29E6E71A092D3EDE8FDB62A2FD394FCF01A17'
  checksumType  = 'sha256'
  
  silentArgs   = '/S'

  softwareName  = 'AltDrag'
}

Install-ChocolateyPackage @packageArgs
