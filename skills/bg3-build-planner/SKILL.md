---
name: bg3-build-planner
description: >
  BG3 full build planner. Use when you need a complete plan: exact class levels, feat choices,
  ability score priorities, BIS equipment per act, and leveling order for a specific build.
allowed-tools: Read
argument-hint: "[build name | class | 'Dark Urge Bladelock Tactician 100%']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Build Planner

Read DONT.md before running.

## This skill includes
- `references/builds.md` — Build frameworks, class levels, key features
- `references/items.md` — Item properties and locations for BIS gear

## Steps

1. Read `references/builds.md` to find the build framework.
2. Read `references/items.md` to identify BIS items per act.
3. Generate a complete build plan.

If the user specifies goals (e.g., "100% achievement", "Honor Mode", "specific Origin"), factor these in:
- 100% achievement: never recommend choices that break achievements
- Honor Mode: flag any ability or mechanic that works differently on HM
- Dark Urge: note which decisions are exclusive to Dark Urge

## Output Format

### [Build Name] — Full Plan

**Run Context:** Difficulty | Origin | Goals

---

**Ability Scores (at character creation):**
| STR | DEX | CON | INT | WIS | CHA |
|-----|-----|-----|-----|-----|-----|
| X   | X   | X   | X   | X   | X   |

**Race:** Recommended race and why.

**Background:** Recommended background for skill coverage.

---

**Leveling Order:**

| Level | Class | Feature Gained | Note |
|-------|-------|---------------|------|
| 1 | Class A | Feature | |
| 2 | Class A | Feature | |
| ... | | | |
| N | Class B | Feature | Switch here because: |

---

**Feat Choices:**

| Level | Feat | Why |
|-------|------|-----|
| 4 | Ability Score Improvement (+2 CHA) | Spell save DC and attack rolls |
| 8 | War Caster | Concentration on Darkness stays up |

---

**BIS Equipment by Act:**

*Act 1:*
- Weapon: [Name] — Location. Why it's best.
- Helmet: [Name] — Location.
- ...

*Act 2:*
- Upgrades from Act 1:
- [Name] — Location. Why it replaces the Act 1 piece.

*Act 3:*
- [Name] — Location.

---

**Spells / Abilities to Prepare:**
- [Spell]: Why and when to use it.

---

**Rotation:**
- Opening: What to do on turn 1
- Sustained: What the standard combat loop looks like

---

**Companion Synergy:**
- Best companion builds to support this Main.

$ARGUMENTS
