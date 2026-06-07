# Contributing to BG3 Claude Skills

## What to Contribute

### High Priority

- **`references/items.md`** - Item properties and where to find them. If you know an item not listed, add it.
- **`references/builds.md`** - New builds, Honor Mode variants, updated tier rankings post-patch.
- **`references/companions.md`** - Approval value tables, missing companion quest steps.
- **`references/party-synergies.md`** - Tested party compositions with specific notes.

### Medium Priority

- Patch-specific updates (mark with `<!-- patch: 7.x -->` inline)
- Honor Mode specific mechanics for bosses
- Missing quest walkthroughs in `references/quests.md`

### Low Priority (but welcome)

- Typo fixes
- Better formatting
- Additional strategy notes in `references/bosses.md`

---

## How to Add an Item

Open `skills/bg3-items/references/items.md` and add to the correct section:

```markdown
### Item Name (Location - how to get it)
- **Rarity:** Very Rare | **Type:** Gloves | **Patch:** 7.x
- **Property Name:** What it does — concisely.
- **Property 2:** What it does.
- **Note:** Build synergy or when to use it.
```

---

## How to Add a Build

Open `skills/bg3-build/references/builds.md` and add:

```markdown
### Build Name
- **Classes:** Class A X / Class B Y
- **Difficulty:** Easy / Medium / Hard
- **Role:** DPS / Tank / Support / Hybrid
- **Summary:** One sentence on the core mechanic.
- **Key Abilities:** List the important spells/features.
- **BIS Items:** (optional) Point to the items skill for full details.
- **Note:** Honor Mode viability, synergy with other companions, etc.
```

---

## Data Format Rules

- Item names, spell names, ability names: keep in English (in-game names exactly as shown)
- Patch version: add `| Patch: 7.x` to table rows when known
- Immunities: use the in-game terminology (Bludgeoning, Radiant, Psychic, etc.)
- Don't include spoilers without a `> **SPOILER:**` prefix

---

## Updating Patch Data

If a mechanic changed in a patch:
1. Find the relevant `references/*.md` file
2. Update the content
3. Change the `patch:` field at the top of the file
4. Submit a PR with the patch number in the title

---

## PR Format

```
[patch 7.x] Add Nyrulna item to items.md
[build] Add OH Paladin Monk build
[boss] Update Gortash trap list for patch 7.1
[quest] Add missing Find Dribbles body location
```
