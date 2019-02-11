function get-programfilesdir() {
  if ($ENV:Processor_Architecture -eq "AMD64") {
    (Get-Item "Env:ProgramFiles(x86)").Value
  }
  else {
    (Get-Item "Env:ProgramFiles").Value
  }
}

$installDir = (get-programfilesdir)
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://freefr.dl.sourceforge.net/project/nantcontrib/nantcontrib/0.92/nantcontrib-0.92-bin.zip' 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'zip' 
  url           = $url
  softwareName  = 'nantContrib*' 
  checksum      = 'FEB881707D60B81F8B3C5709800F1B69775F27E9803896C0351BEC9F54AB51E3'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs 

Copy-Item $toolsDir'\nantcontrib-0.92\**' -Destination $installDir'\nant-0.92' -Force -Recurse
