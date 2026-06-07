# BG3 Claude Skills - Repository Guide

This repo contains Claude Code skills for Baldur's Gate 3. Each skill lives in `skills/{name}/` and follows the native Claude Code skill format.

## Structure

```
skills/
├── bg3/                    # Main router - routes any BG3 question
├── bg3-boss/               # Boss mechanics, immunities, strategy
│   └── references/
│       └── bosses.md       # Full boss database (all acts)
├── bg3-items/              # Item lookup and build synergies
│   └── references/
│       └── items.md        # Item properties and locations
├── bg3-build/              # Class builds and multiclass options
│   └── references/
│       └── builds.md       # Popular builds by class
├── bg3-build-planner/      # Full build planner (references builds + items)
│   └── references/
│       ├── builds.md
│       └── items.md
├── bg3-quest/              # Quest walkthrough, missable alerts
│   └── references/
│       └── quests.md       # All 152 quests
├── bg3-achievement/        # 100% achievement guide
│   └── references/
│       └── achievements.md
├── bg3-consumables/        # Elixirs, potions, grenades, coatings
│   └── references/
│       └── consumables.md
├── bg3-illithid/           # Tadpole economy and Illithid powers
│   └── references/
│       └── illithid-powers.md
├── bg3-party/              # Party composition and synergies
│   └── references/
│       └── party-synergies.md
├── bg3-companion/          # Companion quests, approval, romance
│   └── references/
│       └── companions.md
└── bg3-run-planner/        # Meta skill - generates full run roadmap
```

## Data Files

`references/*.md` files inside each skill are the BG3 data source. They are loaded by Claude when the skill is invoked. To contribute data, edit the relevant `references/*.md` file and submit a PR.

## Editing Skills

Edit `skills/{name}/SKILL.md` to change how Claude behaves for that skill. Edit `skills/{name}/DONT.md` to add known failure modes after you discover them.

## Installing Locally

```powershell
.\install.ps1
```

This copies all `skills/*` directories into `~/.claude/skills/`. Re-run after pulling new skill versions.
