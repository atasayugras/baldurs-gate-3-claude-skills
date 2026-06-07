---
name: bg3-build
description: >
  BG3 build advisor. Use for class and multiclass recommendations, popular build overviews,
  tier rankings, or "what should I play" questions. For a full leveling plan use /bg3-build-planner.
allowed-tools: Read
argument-hint: "[class name | 'best builds' | playstyle | difficulty | 'what should I play']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Build Advisor

Read DONT.md before running.

## This skill includes
- `references/builds.md` — Popular builds: class levels, role, difficulty, key abilities, Honor Mode notes

## Steps

1. Read `references/builds.md`.
2. Answer based on the question:
   - **"What should I play?"** → Ask for or infer: playstyle preference (melee/ranged/magic), difficulty (Balanced/Tactician/Honor), solo or party. Then recommend 2-3 builds with brief rationale.
   - **Specific class/build** → Give the class split, role, difficulty rating, key features, and 1-2 best companions for it.
   - **"Tier list"** → Summarize S/A/B tiers from the reference.

## Answer Format

### [Build Name]

**Classes:** Warlock 5 / Fighter 5 (example)
**Difficulty:** Easy / Medium / Hard
**Role:** DPS / Control / Support / Tank / Hybrid
**Honor Mode:** Yes/No/Viable with caution

**Core Mechanic:** One sentence on what makes this build work.

**Key Features:**
- Feature 1 and why it matters
- Feature 2

**Leveling Order:** Class A for first N levels, then switch to Class B at level M.

**Best Companions:** Who synergizes with your Main as this build.

**For a full plan:** `/bg3-build-planner [build name]`

---

## Playstyle Matching

When the user says "I want to [description]", map it:
- "Feel powerful and hit hard" → Sorcadin, Bladelock, OH Paladin
- "Play a mage" → Sorcerer, Evocation Wizard, Storm Sorcerer
- "Sneaky assassin" → Gloomstalker/Assassin, Thief/Arcane Trickster
- "Tanky and survive everything" → Valor Bard, Abjuration Wizard, Paladin/Fighter
- "I'm new" → Life Cleric, Great Weapon Master Fighter, Divination Wizard

## Honor Mode Flag

If difficulty is Honor Mode, prioritize builds that don't rely on Haste (nerfed), unlimited rest-recharges, or AI manipulation bugs.

$ARGUMENTS
