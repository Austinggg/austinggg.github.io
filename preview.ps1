param([int]$Port = 4000, [switch]$Rebuild)
$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
if ((Test-Path -LiteralPath '_site/index.html') -and -not $Rebuild) {
    Write-Output "Serving the GitHub Actions build at http://127.0.0.1:$Port/"
    python -m http.server $Port --bind 127.0.0.1 --directory _site
    exit
}
$portableRoot = Join-Path (Split-Path -Parent $PSScriptRoot) 'tmp/ruby-runtime/rubyinstaller-3.3.12-1-x64/bin'
$gemRoot = Join-Path (Split-Path -Parent $PSScriptRoot) 'tmp/ruby-gems'
if (Test-Path -LiteralPath (Join-Path $portableRoot 'ruby.exe')) {
    $env:PATH = $portableRoot + ';' + $env:PATH
    $env:GEM_HOME = $gemRoot
    $env:GEM_PATH = $gemRoot
    $env:PATH = (Join-Path $gemRoot 'bin') + ';' + $env:PATH
}
if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    throw 'Install Ruby 3.3+ with Devkit on Windows, run bundle install, then use -Rebuild.'
}
bundle check
if ($LASTEXITCODE -ne 0) {
    throw 'Jekyll dependencies are incomplete. Install Ruby+Devkit and run bundle install, or preview the downloaded GitHub Actions build.'
}
bundle exec jekyll serve --host 127.0.0.1 --port $Port
