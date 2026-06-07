---
name: bg3-quest
description: >
  BG3 quest advisor. Use for quest walkthroughs, step order, missable alerts, act-spanning
  quest chains, and quest decisions that affect achievements or companions.
allowed-tools: Read
argument-hint: "[quest name | 'missable quests act 2' | 'what quests before X']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Quest Advisor

Read DONT.md before running.

## This skill includes
- `references/quests.md` — All 152 quests: act, type, steps, missable alerts, achievement ties

## Steps

1. Read `references/quests.md`.
2. Find the relevant quest(s).
3. Answer with: **act**, **quest type**, **walkthrough steps**, **missable conditions**, **achievement impact if any**, **ordering notes if relevant**.

## Answer Format

### [Quest Name]
**Act:** N | **Type:** Main / Companion / Personal / Side

**Overview:** One sentence.

**Steps:**
1. Step 1
2. Step 2
...

**Missable Alert:** *(only if applicable)* What breaks the quest and when.

**Achievement Impact:** *(only if applicable)* Which achievement is affected and how.

**Order Note:** *(only if quest has timing dependencies)* Do before/after X.

---

## Ordering Questions

When asked "should I do X before Y", check:
1. Is there a timing constraint (quest auto-fails if done after another)?
2. Does one quest give items/allies useful for the other?
3. Is there an achievement conflict?

Answer with a clear recommendation + reason.

## Missing Quest

If the quest isn't in `references/quests.md`, check the quest list at the top of the file to confirm if it exists. If it does exist but lacks detail, say the walkthrough entry is missing and offer what you know from general BG3 knowledge.

$ARGUMENTS
