param([int]$Port = 4000)
$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
$portableRoot = Join-Path (Split-Path -Parent $PSScriptRoot) 'tmp/ruby-runtime/rubyinstaller-3.3.12-1-x64/bin'
$gemRoot = Join-Path (Split-Path -Parent $PSScriptRoot) 'tmp/ruby-gems'
if (Test-Path -LiteralPath (Join-Path $portableRoot 'ruby.exe')) {
    $env:PATH = $portableRoot + ';' + $env:PATH
    $env:GEM_HOME = $gemRoot
    $env:GEM_PATH = $gemRoot
    $env:PATH = (Join-Path $gemRoot 'bin') + ';' + $env:PATH
}
if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    throw 'Install Ruby 3.3 or later, then run bundle install.'
}
bundle exec jekyll serve --host 127.0.0.1 --port $Port
