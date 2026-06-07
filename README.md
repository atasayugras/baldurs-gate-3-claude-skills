# Baldur's Gate 3 - Claude Code Skills

![Skills](https://img.shields.io/badge/skills-14-blueviolet?style=flat-square)
![Patch](https://img.shields.io/badge/patch-7.x-blue?style=flat-square)
![Platform](https://img.shields.io/badge/platform-Claude%20Code-orange?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
[![GitHub Stars](https://img.shields.io/github/stars/atasayugras/baldurs-gate-3-claude-skills?style=flat-square)](https://github.com/atasayugras/baldurs-gate-3-claude-skills/stargazers)

A collection of [Claude Code](https://claude.ai/code) skills that turn Claude into an intelligent BG3 advisor. Ask about bosses, builds, quests, achievements, items, companions, consumables, illithid powers, camp inventory, and loot decisions - in natural language, using your local reference files.

No web searches. No outdated wikis. Data lives in your install.

---

## What This Is

[Claude Code](https://claude.ai/code) supports custom skill files - markdown files with YAML frontmatter that teach Claude structured behaviors. This repo provides 14 BG3-specific skills you install once and use forever.

```
/bg3-boss Raphael
```
```
Raphael (House of Hope) - Act 3
ACHIEVEMENT: None tied to this fight.
KEY MECHANIC: 4 Soul Pillars give him +1d12 Fire and +3 DEX saves each.
  Destroy them FIRST with Radiant damage - they become vulnerable at fight start.
STRATEGY: Pre-position before triggering dialogue. Shadowheart with Blood of
  Lathander melts pillars instantly. Once pillars are down he's manageable.
CONSUMABLES: Elixir of Fire Resistance, Potions of Speed, Elixir of Heroism.
```

```
/bg3-report I just found the Sussur Greatsword
```
```
ITEM: Sussur Greatsword (Rare, Weapon)
PROPERTIES: On hit - DC 12 CON save or 2 turns Silenced. Blocks verbal spell
  components. Works on any caster.

VERDICT: CAMP CHEST
WHO: Lae'zel
WHY: Swap it in specifically against caster-heavy fights (githyanki patrols,
  Raphael's summoned defenders). Your current Phalar Aluve aura is too
  valuable to replace permanently.
```

```
/bg3-build-planner Dark Urge Sorcadin, Honor Mode, 100% achievements
```
```
FULL BUILD PLAN: Sorcadin (Paladin 5 / Sorcerer 7)
RACE: Zariel Tiefling (extra smite spell)
BACKGROUND: Haunted One (Dark Urge)
...
```

---

## Skills

| Command | What It Does |
|---------|--------------|
| `/bg3` | Main router - answers any BG3 question and routes to the right skill |
| `/bg3-boss` | Boss mechanics, immunities, resistances, achievement-critical conditions |
| `/bg3-items` | Item properties, locations, build synergies - no wiki needed |
| `/bg3-build` | Class builds, multiclass options, S/A/B/C tier list, Honor Mode viability |
| `/bg3-build-planner` | Full plan: ability scores, leveling order, feat choices, BIS gear per act |
| `/bg3-quest` | Walkthroughs, missable alerts, act-spanning quest chains (152 quests) |
| `/bg3-achievement` | All achievements, missable warnings, 100% checklist, decision safety |
| `/bg3-consumables` | Elixirs, potions, grenades, coatings + boss matchup table |
| `/bg3-illithid` | Tadpole economy, 25 powers, unlock priority by build |
| `/bg3-party` | Party composition, companion roles, synergy archetypes |
| `/bg3-companion` | Companion quests, approval, romance, missable events (all 10 companions) |
| `/bg3-run-planner` | Full run roadmap: quest order, companion queue, ongoing tracker |
| `/bg3-camp-inventory` | Track Traveller's Chest + inactive companion inventories |
| `/bg3-report` | "I found X, what do I do?" - structured loot and event advisor |

---

## Install

### Windows (PowerShell)

```powershell
git clone https://github.com/atasayugras/baldurs-gate-3-claude-skills.git
cd baldurs-gate-3-claude-skills
.\install.ps1
```

### macOS / Linux

```bash
git clone https://github.com/atasayugras/baldurs-gate-3-claude-skills.git
cd baldurs-gate-3-claude-skills
./install.sh
```

Copies `skills/*` into `~/.claude/skills/`. Restart Claude Code after install.

### Requirements

- [Claude Code](https://claude.ai/code) (any plan - free tier works)
- Git
- No other dependencies

---

## More Usage Examples

```
/bg3 how do I beat Apostle of Myrkul without losing the achievement?
/bg3-boss Grym
/bg3-build what's the best Honor Mode build?
/bg3-build-planner Tavern Brawler Monk, Tactician, no achievements needed
/bg3-quest Find Dribbles the Clown
/bg3-achievement Leave No One Behind checklist
/bg3-achievement will killing the Nightsong break any achievement?
/bg3-consumables what should I bring to the Cazador fight?
/bg3-illithid which powers should I unlock first for a Bladelock?
/bg3-run-planner Sorcadin, Honor Mode, completionist
/bg3-companion Astarion romance steps
/bg3-companion Wyll Loophole achievement - what do I need to do?
/bg3-camp-inventory what do I have stored for Lae'zel?
/bg3-report I just picked up the Surgeon's Subjugation Amulet
```

---

## What's Inside

Each skill folder contains:
- `SKILL.md` - Claude's instructions (stable, patch-independent)
- `DONT.md` - Anti-patterns and guardrails
- `references/` - The actual BG3 data (update when patches change things)

Separating skill logic from data means the community can update `references/*.md` files after patches without touching the skill behavior.

**Data coverage:**
- All bosses (Act 1/2/3) with immunities, resistances, achievement conditions
- 152 quests with walkthroughs for the most complex/missable ones
- All achievements with missable warnings and decision safety checks
- S/A/B/C tier builds + all 10 companion build recommendations
- Named items with properties in plain language (not wiki copypaste)
- All 25 illithid powers + tadpole economy table
- Full consumables list: elixirs, potions, grenades, coatings, boss matchups
- All 10 companions: quests, approval, romance, achievement ties
- Party composition archetypes + companion swap schedule

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Most wanted contributions:
- Missing named items in `skills/bg3-items/references/items.md`
- Act 3 builds and BiS gear updates
- Honor Mode notes for specific encounters
- Companion approval value tables (numerical)
- Patch update corrections (add a PR with the changed `patch:` field)

---

## License

MIT. Use it, fork it, share it.

> One rule: **no mods on achievement runs** - mods disable all achievements.
