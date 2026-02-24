param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Targets
)

$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$luacheck = Join-Path $repoRoot "scripts\\luacheck.exe"

if (-not (Test-Path $luacheck)) {
    Write-Error "Missing luacheck executable at $luacheck"
    exit 1
}

Push-Location $repoRoot
try {
    if ($Targets -and $Targets.Count -gt 0) {
        & $luacheck @Targets
        exit $LASTEXITCODE
    }

    # Include tracked + untracked Lua files, while honoring .gitignore/excludes.
    $files = git ls-files --cached --others --exclude-standard -- '*.lua'
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to list Lua files with git."
        exit $LASTEXITCODE
    }

    if (-not $files -or $files.Count -eq 0) {
        Write-Host "No Lua files found to lint."
        exit 0
    }

    & $luacheck @files
    exit $LASTEXITCODE
}
finally {
    Pop-Location
}
