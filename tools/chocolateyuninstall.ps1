function get-programfilesdir() {
  if ($ENV:Processor_Architecture -eq "AMD64") {
    (Get-Item "Env:ProgramFiles(x86)").Value
  }
  else {
    (Get-Item "Env:ProgramFiles").Value
  }
}

$installDir = (get-programfilesdir)
Remove-Item $installDir'\nant-0.92\license.txt'
Remove-Item $installDir'\nant-0.92\bin\CollectionGen.dll'
Remove-Item $installDir'\nant-0.92\bin\Interop.MsmMergeTypeLib.dll'
Remove-Item $installDir'\nant-0.92\bin\Interop.StarTeam.dll'
Remove-Item $installDir'\nant-0.92\bin\Interop.WindowsInstaller.dll'
Remove-Item $installDir'\nant-0.92\bin\NAnt.Contrib.Tasks.dll'
Remove-Item $installDir'\nant-0.92\bin\NAnt.Contrib.Tasks.xml'
Remove-Item $installDir'\nant-0.92\bin\SLiNgshoT.Core.dll'
Remove-Item $installDir'\nant-0.92\bin\SLiNgshoT.exe'
Remove-Item $installDir'\nant-0.92\bin\SourceSafe.Interop.dll'
Remove-Item $installDir'\nant-0.92\examples\examples.build'
Remove-Item $installDir'\nant-0.92\examples\NUnit2Report\Compagny.Argos.Test.xml'
Remove-Item $installDir'\nant-0.92\examples\NUnit2Report\Compagny.Argos-result.xml'
Remove-Item $installDir'\nant-0.92\examples\NUnit2Report\default.build'
Remove-Item $installDir'\nant-0.92\examples\NUnit2Report\Mock-Test-Result.xml'
Remove-Item $installDir'\nant-0.92\examples\NUnit2Report\NUnit-Result.xml'