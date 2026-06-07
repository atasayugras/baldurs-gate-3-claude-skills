# Baldur's Gate 3 - Claude Code Skills

A collection of Claude Code skills that turn Claude into an intelligent BG3 advisor. Ask about bosses, builds, quests, achievements, consumables, companions, and more - in natural language.

**Patch:** 7.x | **Total Skills:** 12 | **Community-driven**

---

## What This Is

These are [Claude Code](https://claude.ai/code) skill files. Once installed, you get slash commands like `/bg3-boss`, `/bg3-build-planner`, and `/bg3-run-planner` that give you context-aware, achievement-conscious BG3 guidance directly in your terminal.

```
/bg3-boss Raphael
> Raphael (House of Hope) — Act 3
> ACHIEVEMENT: None tied to this fight.
> KEY MECHANIC: 4 Soul Pillars give him +1d12 Fire damage and +3 DEX saves each.
>   Pillars become vulnerable when the fight starts — destroy them FIRST with Radiant damage.
> STRATEGY: Pre-position your party before triggering dialogue. Shadowheart with
>   Blood of Lathander melts pillars instantly. Once pillars are down, he's manageable...
```

---

## Skills

| Slash Command | What It Does |
|---------------|--------------|
| `/bg3` | Main entry point - routes any BG3 question to the right skill |
| `/bg3-boss` | Boss mechanics, immunities, achievement-critical conditions, strategy |
| `/bg3-items` | Item properties, locations, build synergies |
| `/bg3-build` | Class builds, multiclass options, tier list, difficulty ratings |
| `/bg3-build-planner` | Full build plan: leveling order, feat choices, BIS gear per act |
| `/bg3-quest` | Quest walkthroughs, missable alerts, act-spanning quest chains |
| `/bg3-achievement` | Achievement requirements, missable warnings, 100% checklist |
| `/bg3-consumables` | Elixirs, potions, grenades, coatings + boss matchup table |
| `/bg3-illithid` | Tadpole economy, power unlock order, build synergies |
| `/bg3-party` | Party composition, companion roles, synergy patterns |
| `/bg3-companion` | Companion quests, approval, romance, missable companion events |
| `/bg3-run-planner` | Full run roadmap given your goals (difficulty + build + achievement targets) |

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

The install script copies `skills/*` into `~/.claude/skills/`. Restart Claude Code after install.

---

## Requirements

- [Claude Code](https://claude.ai/code) (any plan)
- No other dependencies

---

## Usage Examples

```
/bg3 how do I beat Apostle of Myrkul without losing the achievement?
/bg3-boss Grym
/bg3-build what's the best Warlock multiclass?
/bg3-build-planner Dark Urge Bladelock, Tactician, 100% achievement
/bg3-quest Find Dribbles the Clown
/bg3-achievement Leave No One Behind
/bg3-consumables what should I bring to the Cazador fight?
/bg3-illithid which powers should I unlock first?
/bg3-run-planner Sorcadin, Honor Mode, completionist
/bg3-companion Astarion romance
```

---

## Data Freshness

Each data file has a `patch:` field. If a boss mechanic or item stat changed in a recent patch, open a PR to update the relevant `references/*.md` file.

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). The most needed contributions:
- Missing item entries in `references/items.md`
- Additional builds in `references/builds.md`
- Honor Mode specific notes
- Companion approval value tables

---

## License

MIT. Use it, fork it, share it. Just don't use mods on your achievement run.
