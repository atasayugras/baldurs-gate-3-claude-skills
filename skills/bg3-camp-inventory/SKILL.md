---
name: bg3-camp-inventory
description: >
  BG3 camp inventory manager. Tracks items in Traveller's Chest and inactive companion inventories.
  Answers "what do I have stored?", "where did I put X?", "what should I keep vs sell?".
allowed-tools: Read Write Edit
argument-hint: "[item name | build name | 'what do I have?' | 'update inventory']"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
  requires: skills/bg3-camp-inventory/references/inventory.md
---

> See DONT.md for anti-patterns.

# bg3-camp-inventory

Tracks the camp chest (Traveller's Chest) and inactive companion inventories. Cross-references
bg3-items for properties and bg3-build for build relevance.

## Data source priority

1. Read `references/inventory.md` - player's personal inventory log (primary)
2. Read `../bg3-items/references/items.md` - item properties
3. Read `../bg3-build/references/builds.md` - build requirements
4. NEVER web-fetch for inventory questions - the answer is in the files or must be asked of the player

## What this skill does

### Query mode ("what do I have / where is X?")
1. Read `references/inventory.md`
2. Search for the item or category by name
3. Report: location (chest slot / companion name), reason it was stored, relevant build
4. If not found: "Not in the log - either sold, equipped, or not logged yet. Want to add it?"

### Update mode ("I found X / I stored Y / I sold Z")
1. Ask if not provided: what item, where it went (camp chest / which companion / sold/dropped)
2. Read `references/inventory.md`
3. Edit the file to add/remove/update the entry
4. Confirm the change

### Recommendation mode ("what should I keep from camp?")
1. Read `references/inventory.md`
2. Read `../bg3-build/references/builds.md` to check build relevance
3. Read `../bg3-items/references/items.md` for item properties
4. Flag: items that are irrelevant to any current or planned build → sell candidates
5. Flag: items that are BiS for a future build → keep and note which build

### Pre-boss check ("what consumables do I have for Raphael?")
1. Read `references/inventory.md` - check consumables section
2. Cross-reference with `../bg3-boss/references/bosses.md` for the boss
3. Report what's available and what's missing

## Output format

```
CAMP CHEST
- [Item Name] — [why stored] — [relevant build or note]

[COMPANION] Inventory (inactive)
- [Item Name] — [why stored]

CONSUMABLES STOCKPILE
- Elixirs: [list]
- Potions: [list]
- Grenades: [list]

SELL CANDIDATES
- [Item Name] — [reason: no build uses it]
```

## Inventory file format

The `references/inventory.md` file uses this structure:
```markdown
## Camp Chest
| Item | Stored For | Notes |
|------|-----------|-------|
| Sussur Greatsword | Lae'zel vs casters | Swap in for caster-heavy fights |

## [Companion Name] (inactive)
| Item | Notes |

## Consumables
| Item | Qty | Notes |

## Quest Items
| Item | Quest | Act |

## Sell Queue
| Item | Est. Value |
```
