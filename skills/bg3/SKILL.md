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

## Achievement Priority Rule

**Always check achievement impact before any other recommendation.** If the user is making a decision (dialog choice, quest order, boss strategy), state the achievement-safe option first, then add other recommendations.

## Data Freshness

When loading data from any `references/` file, check the `patch:` field at the top. If the file is behind the current patch, note it before answering.

## No Mods Rule

If the user mentions mods, remind them: **any mod disables achievements**. Achievement-focused advice is always vanilla-only.

$ARGUMENTS
