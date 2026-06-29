#!/usr/bin/env pwsh
# BG3 Claude Skills - Windows installer
# Copies all skills to ~/.claude/skills/ and agents to ~/.claude/agents/

$skillsSource = Join-Path $PSScriptRoot "skills"
$skillsDest   = Join-Path $env:USERPROFILE ".claude\skills"

$agentsSource = Join-Path $PSScriptRoot ".claude\agents"
$agentsDest   = Join-Path $env:USERPROFILE ".claude\agents"

# Install skills
if (-not (Test-Path $skillsDest)) {
    New-Item -ItemType Directory -Force $skillsDest | Out-Null
}

$skills = Get-ChildItem -Path $skillsSource -Directory

foreach ($skill in $skills) {
    $target = Join-Path $skillsDest $skill.Name
    if (Test-Path $target) {
        Write-Host "Updating skill:  $($skill.Name)"
        Remove-Item -Recurse -Force $target
    } else {
        Write-Host "Installing skill: $($skill.Name)"
    }
    Copy-Item -Recurse $skill.FullName $target
}

# Install agents
if (Test-Path $agentsSource) {
    if (-not (Test-Path $agentsDest)) {
        New-Item -ItemType Directory -Force $agentsDest | Out-Null
    }

    $agents = Get-ChildItem -Path $agentsSource -Directory

    foreach ($agent in $agents) {
        $target = Join-Path $agentsDest $agent.Name
        if (Test-Path $target) {
            Write-Host "Updating agent:  $($agent.Name)"
            Remove-Item -Recurse -Force $target
        } else {
            Write-Host "Installing agent: $($agent.Name)"
        }
        Copy-Item -Recurse $agent.FullName $target
    }
}

Write-Host ""
Write-Host "Done."
Write-Host "  $($skills.Count) skill(s) installed to $skillsDest"
if (Test-Path $agentsSource) {
    $agentCount = (Get-ChildItem -Path $agentsSource -Directory).Count
    Write-Host "  $agentCount agent(s) installed to $agentsDest"
}
Write-Host ""
Write-Host "Restart Claude Code to pick up the new skills and agents."
Write-Host ""
Write-Host "Slash commands:"
Get-ChildItem -Path $skillsSource -Directory | ForEach-Object { Write-Host "  /$($_.Name)" }
Write-Host ""
Write-Host "Agents (invoke via Agent tool or subagent_type):"
if (Test-Path $agentsSource) {
    Get-ChildItem -Path $agentsSource -Directory | ForEach-Object { Write-Host "  $($_.Name)" }
}
