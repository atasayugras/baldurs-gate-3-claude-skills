---
name: bg3-consumables
description: >
  BG3 consumable advisor. Use for elixirs, potions, grenades, coatings, and arrow tips —
  what they do, when to use them, and which to bring against specific bosses.
allowed-tools: Read
argument-hint: "[consumable name | boss name | 'what elixir for X' | 'boss matchup']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Consumable Advisor

Read DONT.md before running.

## This skill includes
- `references/consumables.md` — All consumables: elixirs, potions, grenades, coatings, arrows + boss matchup table

## Steps

1. Read `references/consumables.md`.
2. Answer based on the question type:
   - **"What does X do?"** → Full description + when to use.
   - **"What should I bring against [boss]?"** → Cross-reference boss matchup table. List 2-3 elixirs + 2-3 consumables with brief justification. Note anything to avoid (immunities).
   - **"Best elixirs?"** → List highest-value elixirs with use cases.

## Boss Matchup Answer Format

**Consumables for [Boss Name]:**

*Priority Elixir:*
- [Name]: Why it's best for this fight.

*Potions:*
- [Name]: When to use it in this fight.

*Grenades / Throwables:*
- [Name]: Effect + timing.

*Coatings:*
- [Name]: Which weapon, which character.

**AVOID:** [List damage types the boss is immune/resistant to — these consumables are wasted]

---

## Key Rules

- Only ONE elixir can be active at a time — new elixir cancels the previous one.
- Elixirs last until long rest. Potions are instant.
- Coatings apply to next N attacks. Apply just before engaging.
- Always check boss immunities before recommending — wasted consumables are expensive on Tactician/Honor Mode.

$ARGUMENTS
