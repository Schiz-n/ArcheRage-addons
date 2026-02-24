$ErrorActionPreference = "Stop"

git config core.hooksPath .githooks
Write-Host "Configured git hooks path to .githooks"
Write-Host "Make sure luacheck is installed: luarocks install luacheck"