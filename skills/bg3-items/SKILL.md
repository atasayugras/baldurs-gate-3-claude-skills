---
name: bg3-items
description: >
  BG3 item lookup. Use when asking what an item does, where to find it, whether it's worth
  keeping, or how it synergizes with a build. Covers weapons, armor, rings, amulets, and more.
allowed-tools: Read
argument-hint: "[item name | item type | 'what's BIS for X']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Item Advisor

Read DONT.md before running.

## This skill includes
- `references/items.md` — Named items: properties, locations, build synergies, notes

## Steps

1. Read `references/items.md`.
2. Find the requested item(s).
3. Answer with: **name**, **where to get it**, **what its properties do** (in plain terms), **who it's for**, **build synergy if notable**.
4. If the item isn't in the file, say so and fetch from [bg3.wiki](https://bg3.wiki/wiki/) mentally, noting it as unverified.

## Answer Format

**[Item Name]**
- **Where:** Location or vendor + act
- **Rarity / Type:** e.g., Very Rare shortsword
- **Key Properties:**
  - Property name: What it does, concisely.
  - Property name: What it does.
- **Best For:** Which class/build benefits most
- **Note:** Any gotcha, bug, or synergy worth flagging

## Property Explanation Rule

Never just repeat the item description verbatim. Explain what the property means in practice:
- "Advantage on attack rolls against Invisible targets" → "If you're in Darkness (Heavily Obscured), this gives Advantage on every attack."
- "Grants Covert Critical" → "Crit threshold drops by 1 while obscured — stacks with other sources."

## Build Synergy Flag

If an item is particularly strong for a specific build, say so. If it's from a boss that has an achievement tied to it, note the achievement.

$ARGUMENTS
