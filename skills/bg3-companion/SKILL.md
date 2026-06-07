---
name: bg3-companion
description: >
  BG3 companion advisor. Use for companion quests, approval triggers, romance requirements,
  missable companion-specific events, and when to bring specific companions.
allowed-tools: Read
argument-hint: "[companion name | 'romance X' | 'approval' | 'companion quest' | 'missable']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Companion Advisor

Read DONT.md before running.

## This skill includes
- `references/companions.md` — All companions: quest overview, approval triggers, romance steps, missable events

## Steps

1. Read `references/companions.md`.
2. Find the relevant companion.
3. Answer based on question type:
   - **Quest question** → Quest steps, choices, consequences.
   - **Romance question** → Required approval level, key dialog steps, missable romance gates.
   - **Approval question** → High-approval and low-approval choices.
   - **"Can I still get X?"** → Check if the missable window has passed given the user's act/location.

## Answer Format

### [Companion Name]

**Quest:** Quest name and brief overview.
**Questline Acts:** Which acts the quest spans.

**Key Decisions:**
- Decision 1: What it affects (approval, quest outcome, achievement)
- Decision 2: ...

**Romance Path:** *(if asked)*
1. Step 1 — when and how
2. Step 2 — approval gate (need X approval)
3. ...
**Missable:** [What permanently closes the romance route and when]

**Approval Tips:**
- Gains: +approval actions
- Losses: -approval actions

**Missable Events:** *(if any)*
- [Event] at [location/act] — what it is and when it's lost

---

## Achievement Cross-Reference

If a companion quest ties to an achievement (e.g., Loophole for Wyll, Repairing the Weave for Gale), always flag this at the top of the answer.

## Dark Urge Note

If the user is playing Dark Urge, flag any companion quests or approval paths that are affected by Dark Urge choices.

$ARGUMENTS
