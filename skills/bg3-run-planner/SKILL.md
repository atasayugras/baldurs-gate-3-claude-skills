---
name: bg3-run-planner
description: >
  BG3 meta run planner. Use when starting a new run or planning ahead. Given your goals
  (difficulty, build, achievements, origin), generates a full roadmap: class, quest order,
  missable checklist, act priorities, and key decisions across all three acts.
allowed-tools: Read
argument-hint: "[build | difficulty | origin | goals — e.g. 'Sorcadin Honor Mode 100%']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Run Planner

Read DONT.md before running.

## This skill includes

No dedicated references — this skill synthesizes from other skills' data.

## Gather Context First

Before generating the roadmap, confirm (ask if not provided):
1. **Build:** What class/multiclass are you playing? (if unsure, suggest `/bg3-build` first)
2. **Difficulty:** Balanced / Tactician / Honor Mode
3. **Origin:** Custom / Dark Urge / Specific Origin character
4. **Goals:** 100% achievement? Completionist? Story-only? Speed?
5. **Act:** Starting fresh or mid-run?

## Output Format

### Run Roadmap: [Summary]

**Build:** [Name] | **Difficulty:** X | **Origin:** X | **Goal:** X

---

#### PRE-RUN CHECKLIST
- [ ] No mods installed (required for achievements)
- [ ] Correct difficulty selected (Tactician required for Critical Hit achievement)
- [ ] Dark Urge selected (required for Embrace Your Urge + Sins of the Father)

---

#### ACT 1 — PRIORITY ORDER

**Critical (must do, achievement or story locks):**
1. [Quest/action] — why it's critical
2. ...

**Important (strong rewards or companion quests):**
1. [Quest/action]
2. ...

**Do Before Leaving Act 1:**
- [ ] [Missable item or quest]
- [ ] [Companion event to trigger]

**Key Decisions in Act 1:**
- [Decision]: Recommended choice + why (achievement/companion impact)

---

#### ACT 2 — PRIORITY ORDER

**Critical:**
...

**Important:**
...

**Do Before Leaving Act 2:**
- [ ] [Missable content]

**Act 2 Order Note:** [Any sequencing that matters in Act 2]

---

#### ACT 3 — PRIORITY ORDER

**Critical:**
...

**Do Before Final Battle:**
- [ ] All companion quests complete
- [ ] [Other missables]

**Final Act Decision:** [Major ending choice and what it affects]

---

#### ONGOING TRACKERS (All Acts)

| Achievement | Status | Notes |
|-------------|--------|-------|
| Leave No One Behind | Track from Act 1 Day 1 | Never let Isobel be kidnapped |
| She Cannot Be Caged | Track from Act 1 | Keep Sazza alive |
| [Build-specific] | ... | ... |

---

#### COMPANION QUEUE

Who to bring for which content:
- [Companion] in party for [quest/event] — must be active party member
- [Companion] in party for [quest/event]

---

## Honor Mode Additions

If Honor Mode selected, add a section:

#### HONOR MODE SPECIFIC NOTES
- Legendary Actions: Which bosses have them and what changes
- Haste nerf: How it affects your build
- Permadeath backup: Key save points before major fights

## Scope Management

This is a high-level roadmap. For detailed steps on any item:
- `/bg3-boss [boss name]` — fight specifics
- `/bg3-achievement [achievement]` — detailed requirements
- `/bg3-quest [quest name]` — full walkthrough
- `/bg3-build-planner [build]` — full leveling plan

$ARGUMENTS
