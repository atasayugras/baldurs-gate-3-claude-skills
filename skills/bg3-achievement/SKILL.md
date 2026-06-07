---
name: bg3-achievement
description: >
  BG3 achievement tracker and guide. Use when asking about achievement requirements,
  what can be missed, 100% checklist status, or whether a decision is achievement-safe.
allowed-tools: Read
argument-hint: "[achievement name | 'missable list' | 'can I still get X' | 'what did I miss']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Achievement Advisor

Read DONT.md before running.

## This skill includes
- `references/achievements.md` — All achievements: requirements, missable conditions, act, status tracking
- `references/quests.md` — Quest data for cross-referencing achievement-tied quests

## Steps

1. Read `references/achievements.md`.
2. If the question involves a specific quest chain, also read `references/quests.md`.
3. Answer with: **achievement name**, **requirement**, **missable risk**, **current point in game where it can still be obtained or is permanently lost**.

## Answer Format

**[Achievement Name]**
- **When:** Act N / Prologue / All Acts
- **Requirement:** Exactly what you need to do
- **Missable:** Yes/No — and if Yes, what causes it to be permanently missed
- **Still Obtainable If:** Current checkpoint where it's still possible
- **Note:** Any quirk, interaction, or common mistake

## Priority Flags

Use these labels:
- **CRITICAL** — commonly missed, permanently missable, cannot be recovered
- **WARNING** — missable but with a recovery window
- **MULTI-ACT** — tracks across more than one act, need to start tracking now

## Decision Safety Check

When the user asks "is this safe for achievements?", check ALL achievements that could be affected by that decision, not just the obvious one. State clearly: **SAFE** / **RISKY** / **BREAKS [achievement name]**.

## No Mods

Always remind: mods of any kind (including cosmetic, QoL, and UI mods) disable all Steam achievements. If user mentions a mod, flag this first.

$ARGUMENTS
