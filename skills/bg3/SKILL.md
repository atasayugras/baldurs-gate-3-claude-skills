---
name: bg3
description: >
  BG3 advisor for any Baldur's Gate 3 question. Routes to the right sub-skill for bosses,
  builds, quests, achievements, items, companions, consumables, or run planning.
allowed-tools: Read
argument-hint: "[question | boss name | build type | quest name | achievement name]"
metadata:
  game: baldurs-gate-3
  patch: "7.x"
---

# BG3 Advisor

Read DONT.md before running.

## Available Sub-Skills

| Skill | Command | Use When |
|-------|---------|----------|
| Boss advisor | `/bg3-boss` | Boss mechanics, immunities, achievement conditions, strategy |
| Item lookup | `/bg3-items` | Item properties, where to find, build synergies |
| Build advisor | `/bg3-build` | Class/multiclass options, popular builds, tier rankings |
| Build planner | `/bg3-build-planner` | Full plan: leveling, feats, BIS gear per act |
| Quest advisor | `/bg3-quest` | Walkthrough steps, missable alerts, act-spanning chains |
| Achievement tracker | `/bg3-achievement` | Requirements, missable warnings, 100% checklist |
| Consumables | `/bg3-consumables` | Elixirs, potions, grenades, coatings, boss matchups |
| Illithid powers | `/bg3-illithid` | Tadpole economy, which powers to unlock and when |
| Party advisor | `/bg3-party` | Party composition, companion roles, synergy patterns |
| Companion advisor | `/bg3-companion` | Companion quests, approval, romance, missable events |
| Run planner | `/bg3-run-planner` | Full run roadmap: class, quest order, missable checklist |
| Camp inventory | `/bg3-camp-inventory` | Track camp chest + inactive companion inventories |
| Loot reporter | `/bg3-report` | "I found X, what do I do?" - structured loot + event reporting |

## Routing

Analyze the question and invoke the most relevant sub-skill. If the question spans multiple skills, answer the core question directly and mention the more specific skill.

**Routing guide:**
- Specific boss name → `/bg3-boss`
- "What does [item] do" / item location → `/bg3-items`
- "What should I play" / class choice → `/bg3-build`
- "Plan my full build" / leveling plan → `/bg3-build-planner`
- Quest steps / "should I do X before Y" → `/bg3-quest`
- "Will this break an achievement" / achievement status → `/bg3-achievement`
- Elixir / potion / grenade / coating → `/bg3-consumables`
- Tadpole / Illithid power → `/bg3-illithid`
- "Who should I bring" / party synergy → `/bg3-party`
- Companion romance / approval / companion quest → `/bg3-companion`
- Full run roadmap → `/bg3-run-planner`
- "What's in my camp chest" / "where did I store X" → `/bg3-camp-inventory`
- "I found X, what should I do" / item drop decision → `/bg3-report`

## Data Source Rule

**NEVER web-fetch for BG3 questions.** Always read from local reference files first:
- Boss data → `skills/bg3-boss/references/bosses.md`
- Item data → `skills/bg3-items/references/items.md`
- Build data → `skills/bg3-build/references/builds.md`
- Quest data → `skills/bg3-quest/references/quests.md`
- Achievement data → `skills/bg3-achievement/references/achievements.md`
- Consumables → `skills/bg3-consumables/references/consumables.md`
- Illithid powers → `skills/bg3-illithid/references/illithid-powers.md`
- Companions → `skills/bg3-companion/references/companions.md`
- Party synergies → `skills/bg3-party/references/party-synergies.md`
- Camp inventory → `skills/bg3-camp-inventory/references/inventory.md`

Only web-fetch if the answer is genuinely not in any reference file AND the user confirms they want live data. State "data not found in local references" before web-fetching.

## Achievement Priority Rule

**Always check achievement impact before any other recommendation.** If the user is making a decision (dialog choice, quest order, boss strategy), state the achievement-safe option first, then add other recommendations.

## Data Freshness

When loading data from any `references/` file, check the `patch:` field at the top. If the file is behind the current patch, note it before answering.

## No Mods Rule

If the user mentions mods, remind them: **any mod disables achievements**. Achievement-focused advice is always vanilla-only.

$ARGUMENTS
