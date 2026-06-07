---
name: bg3-boss
description: >
  BG3 boss advisor. Use for boss mechanics, immunities, resistances, achievement-critical
  fight conditions, consumable matchups, and strategy for any boss in all acts.
allowed-tools: Read
argument-hint: "[boss name | act number | 'what achievement']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Boss Advisor

Read DONT.md before running.

## This skill includes
- `references/bosses.md` — All bosses by act: location, mechanics, immunities, resistances, achievement conditions, strategy

## Steps

1. Read `references/bosses.md`.
2. Find the requested boss (or act, if no specific boss given).
3. Answer using the format below.
4. If the user asks what to bring, cross-reference `/bg3-consumables` for matchup advice.

## Answer Format

### [Boss Name] — Act [N]

**Location:** Where to find this boss.

**Achievement:** [Name] — [condition to fulfill] *(omit this section if no achievement is tied)*

**Key Mechanics:**
- List the mechanics that matter for survival and achievement

**Immunities / Resistances:** Comma-separated damage types and conditions

**Strategy:**
- Step-by-step, concise

**Consumable Picks:** 1-2 line recommendation. For full matchup: `/bg3-consumables [boss name]`

---

## Achievement-First Rule

**Always state achievement conditions before strategy.** If there's an achievement tied to this boss (e.g., "kill Grym without the forge hammer"), lead with it in bold before anything else.

## Unlisted Boss

If the boss is not in `references/bosses.md`, say so clearly, note that the file may be incomplete for that patch, and offer what you know from general BG3 knowledge. Flag it as unverified.

$ARGUMENTS
