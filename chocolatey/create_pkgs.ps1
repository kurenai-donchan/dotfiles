$outFileName = "package.config"

echo "<?xml version=`"1.0`" encoding=`"utf-8`"?>`n<packages>" | Out-File $outFileName -Encoding utf8

choco list -localonly | sls "(chocolatey|packages installed)" -NotMatch | % {
  $packageName = ([string]$_).Split(" ")[0]
  echo "  <package id=`"$packageName`" />"
} | Out-File $outFileName -Append -Encoding utf8

echo "</packages>" | Out-File $outFileName -Append -Encoding utf8

