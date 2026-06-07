#!/usr/bin/env pwsh
# BG3 Claude Skills - Windows installer
# Copies all skills to ~/.claude/skills/

$source = Join-Path $PSScriptRoot "skills"
$dest = Join-Path $env:USERPROFILE ".claude\skills"

if (-not (Test-Path $dest)) {
    New-Item -ItemType Directory -Force $dest | Out-Null
}

$skills = Get-ChildItem -Path $source -Directory

foreach ($skill in $skills) {
    $target = Join-Path $dest $skill.Name
    if (Test-Path $target) {
        Write-Host "Updating: $($skill.Name)"
        Remove-Item -Recurse -Force $target
    } else {
        Write-Host "Installing: $($skill.Name)"
    }
    Copy-Item -Recurse $skill.FullName $target
}

Write-Host ""
Write-Host "Done. $($skills.Count) skills installed to $dest"
Write-Host "Restart Claude Code to pick up the new skills."
Write-Host ""
Write-Host "Available commands:"
Get-ChildItem -Path $source -Directory | ForEach-Object { Write-Host "  /$($_.Name)" }
