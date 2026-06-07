---
name: bg3-report
description: >
  BG3 loot and event reporter. Ask "I found X, what should I do?" or report any in-game event.
  Claude asks structured questions, then gives a concrete recommendation using your local reference files.
allowed-tools: Read Write Edit
argument-hint: "[item name | 'I found X' | 'I killed X' | 'I completed X quest']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

> See DONT.md for anti-patterns.

# bg3-report

Structured intake for in-game events. Claude gathers context through targeted questions, then
cross-references local skill data to give a precise recommendation. Never guesses, never web-fetches.

## Data source priority (always read in this order)

1. `../bg3-items/references/items.md` - item properties
2. `../bg3-build/references/builds.md` - build relevance
3. `../bg3-party/references/party-synergies.md` - companion fit
4. `../bg3-boss/references/bosses.md` - boss context (if boss-related)
5. `../bg3-achievement/references/achievements.md` - achievement impact
6. `../bg3-camp-inventory/references/inventory.md` - current storage (if it exists)
7. NEVER web-fetch. If data is missing from all files, say so explicitly.

## Report types and question flows

### LOOT REPORT ("I found X" / "I picked up X")

**Step 1 - Identify the item:**
- If item is in `../bg3-items/references/items.md`: read its properties immediately
- If not found: ask player to describe what it does (properties, rarity, slot)

**Step 2 - Gather context (ask only what you don't already know):**
- What act are you in? (Act 1 / 2 / 3)
- Who is in your active party? (Main + 3 companions)
- What is your Main's build? (class/multiclass)

**Step 3 - Cross-reference:**
- Does this item fit any build in `builds.md`? (S/A/B tier builds, companion builds)
- Does any active party member benefit from it right now?
- Is there an achievement tied to this item?

**Step 4 - Give recommendation:**
Use exactly one of these verdicts:
- **EQUIP NOW** on [character] - replaces [current item] - reason
- **CAMP CHEST** - store for [build/character/act] - reason
- **COMPANION INVENTORY** - give to [name] - reason (only if inactive and relevant to their build)
- **SELL** - no build uses this, value approx [X] gold
- **QUEST ITEM** - do not sell or discard - needed for [quest name]
- **INVESTIGATE** - unusual item, read its description carefully before deciding

### BOSS KILL REPORT ("I killed X")

1. Read `../bg3-boss/references/bosses.md` for that boss
2. Note any achievement conditions - did the player meet them?
3. List notable loot from that boss (if in the bosses.md data)
4. Flag next steps (quest progression, unlocked areas)

### QUEST COMPLETE REPORT ("I completed X quest")

1. Read `../bg3-quest/references/quests.md` for that quest
2. Note rewards and what unlocks
3. Check `../bg3-achievement/references/achievements.md` for achievement impact
4. Flag any time-sensitive follow-ups

### LEVEL UP REPORT ("I hit level X")

1. Ask: current class(es) and split
2. Read `../bg3-build/references/builds.md` for the player's build
3. Note what unlocks at this level (feat, ASI, class feature)
4. Give specific recommendation for feat/ASI choice based on the build

## Output format for LOOT REPORT

```
ITEM: [Name] ([Rarity], [Slot])
PROPERTIES: [key properties in plain language]

VERDICT: [EQUIP NOW / CAMP CHEST / SELL / etc.]
WHO: [character name]
WHY: [1-2 sentence reason referencing the build or synergy]

ACHIEVEMENT NOTE: [if any, otherwise omit]
```
