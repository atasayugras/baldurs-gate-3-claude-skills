# Baldur's Gate 3 - Claude Code Skills

![Skills](https://img.shields.io/badge/skills-14-blueviolet?style=flat-square)
![Agents](https://img.shields.io/badge/agents-1-purple?style=flat-square)
![Patch](https://img.shields.io/badge/patch-7.x-blue?style=flat-square)
![Platform](https://img.shields.io/badge/platform-Claude%20Code-orange?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
[![GitHub Stars](https://img.shields.io/github/stars/atasayugras/baldurs-gate-3-claude-skills?style=flat-square)](https://github.com/atasayugras/baldurs-gate-3-claude-skills/stargazers)

A collection of [Claude Code](https://claude.ai/code) skills and an agent that turn Claude into an intelligent BG3 advisor. Ask about bosses, builds, quests, achievements, items, companions, consumables, illithid powers, mechanics, camp inventory, and loot decisions - in natural language, using local reference files.

No web searches. No outdated wikis. Data lives in your install.

---

## Quick Start

After installing, you have two ways to use it:

**Agent** - ask anything in natural language, Claude reads all relevant data and synthesizes:
```
What should I do before leaving Act 2?
How do I beat Raphael as a Bladelock without missing any achievement?
Which Illithid powers work best with a Darkness combo build?
```

**Slash commands** - invoke a specific skill directly:
```
/bg3-boss Raphael
/bg3-mechanics how does Concentration work in BG3?
/bg3-build-planner Dark Urge Sorcadin, Honor Mode, 100% achievements
```

---

## What This Is

[Claude Code](https://claude.ai/code) supports custom skills and agents — markdown files that teach Claude structured behaviors. This repo provides 15 BG3-specific skills and 1 agent you install once and use forever.

**The agent** (`bg3`) reads multiple reference files at once and synthesizes across domains. Ask a multi-part question and it pulls from boss data, build data, achievement requirements, and consumables simultaneously — without you needing to know which skill to invoke.

**The skills** are focused specialists. Use them directly when you know exactly what you want.

---

## Example Output

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
/bg3-mechanics how does Darkness combo work?
```
```
DARKNESS COMBO

Rule: Cast Darkness on yourself - the cloud moves with you. Pair with Devil's Sight
  (you see through it, enemies don't) and One with Shadows (go Invisible inside it).

Interactions:
  + Riposte reaction: enemies miss constantly in Darkness -> free attack every turn
  + Concentration: Darkness uses a Concentration slot - cannot run Hex or Shadow Blade
  - Hex / Shadow Blade / Hunger of Hadar: all clash with Darkness via Concentration
```

---

## Agent

| Name | How to Use | What It Does |
|------|-----------|--------------|
| `bg3` | Ask Claude any BG3 question in natural language | Reads all reference files, synthesizes across domains, checks achievements proactively |

The agent is invoked automatically when you ask BG3 questions in Claude Code. It checks achievement impact before any recommendation and reads your personal data (builds, current playthrough) if you have a `personal/` folder set up.

---

## Skills

| Command | What It Does |
|---------|--------------|
| `/bg3` | Router - routes any BG3 question to the right skill |
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
chmod +x install.sh
./install.sh
```

Copies `skills/*` into `~/.claude/skills/` and `.claude/agents/*` into `~/.claude/agents/`. Restart Claude Code after install.

### Requirements

- [Claude Code](https://claude.ai/code) (any plan - free tier works)
- Git
- No other dependencies

---

## Personal Data (optional)

If you want Claude to know your current build, party composition, and playthrough state, create a `personal/` folder in the repo root (it's gitignored - never committed):

```
personal/
├── knowledge/          # your personal reference files (item lists, notes)
└── playthroughs/
    └── playthrough-1/  # current run state, build, achievement tracker
```

The agent automatically reads from `personal/` if it exists and incorporates your context into answers.

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
- New mechanics entries in `skills/bg3-mechanics/references/mechanics.md`

---

## License

MIT. Use it, fork it, share it.

> One rule: **no mods on achievement runs** - mods disable all achievements.
