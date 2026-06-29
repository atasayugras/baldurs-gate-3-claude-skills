---
patch: "7.x"
source: bg3.wiki + community testing
---

# BG3 - Game Mechanics Reference

Playthrough-independent mechanics reference. For item properties see `/bg3-items`, for quest flow see `/bg3-quest`.

---

## CONCENTRATION

- Only **1 Concentration spell** can be active at a time. Casting a second one drops the first.
- Taking damage may break Concentration: CON save, DC = half damage taken or 10, whichever is higher.
- **War Caster feat:** Advantage on Concentration saving throws.
- **Resilient (CON) feat:** Adds CON save proficiency.
- **BG3 deviation:** Conjure Elemental and Conjure Minor Elemental do NOT require Concentration in BG3 (they do in tabletop 5e). Both can be active simultaneously.

---

## SUMMON MECHANICS

- Each character's summon is independent — multiple party members can have different summons active.
- Conjure Elemental + Conjure Minor Elemental can both be active at once (no Concentration in BG3).
- Re-casting a summon spell kills the current summon and triggers its Death Burst (relevant for Mephits).
- Casting Conjure Elemental with a level 6+ spell slot summons the **Myrmidon** version (significantly stronger).

---

## DARKNESS COMBO

- Casting Darkness on yourself moves the cloud with your character.
- **Devil's Sight invocation:** See through magical darkness — you have no disadvantage inside it, enemies do.
- **One with Shadows invocation:** Go Invisible while in Darkness or dim light (Bonus Action).
- Enemies inside Darkness: Disadvantage on attacks + you have Advantage on attacks against them.
- **Riposte reaction:** Enemies miss constantly in Darkness → Riposte triggers every turn for a free attack.

---

## STORMSHORE TABERNACLE — God Blessing System

**Location:** Lower City, X:107 Y:-22 (near Vicar Humbletoes)

| Detail | Info |
|--------|------|
| Effect | **+2 bonus to ALL Saving Throws (permanent)** |
| Condition name | Anointed in Splendour |
| Duration | Permanent (since Patch 6, no longer lost on long rest) |
| Deity choice | Mechanically identical — deity only affects companion approval |
| Per character | Once only — chosen deity cannot be changed |
| Cost | Scales with character level; mix of gold + items (items counted at sell price) |

**Cost table:**

| Level | Approximate Value |
|-------|------------------|
| 1 | ~400g |
| 10 | ~4,000g |
| 11-12 | ~4,500g |

**Companion approval by deity:**

| Deity | Who approves |
|-------|-------------|
| Mystra | Gale (special bonus) |
| Oghma | Gale (god of knowledge) |
| Mielikki | Jaheira, Halsin |
| Shar | Shadowheart (approval) |
| Lolth / Shar | Minthara |
| Tyr / Helm / Selune | Good-aligned characters |

**Important:** Bhaal's shrine does NOT grant a blessing ("Paltry gifts"). Dark Urge characters must choose a different deity.

---

## BRAND THE WEAK — VULNERABILITY STACKING

- **Amulet of Branding:** Bonus Action, makes target Vulnerable to Bludgeoning/Slashing/Piercing for 3 turns (2× physical damage).
- Only physical damage is doubled — Divine Smite (Radiant), Psychic, Fire, etc. are NOT affected.
- **GWM +10 damage with Vulnerability:** effectively +20 damage per hit.
- Best stacking window: Brand + GWM + Extra Attack + Action Surge.

---

## COFFEELOCK (Warlock / Sorcerer)

Classic build: Warlock 2 (Fiend) / Sorcerer 10

1. Short Rest → Warlock 2 slots refresh (1 slot, level 1)
2. Convert that slot to Sorcery Points (1 SP)
3. Use Flexible Casting to convert SP → new spell slot
4. Repeat → net slot gain per short rest

Result: Effectively infinite low-level spell slots via short resting.

---

## ASSASSIN AUTO-CRIT

Core setup: Assassin 3 / Gloomstalker 5 / Fighter 2 (Astarion)

- Alert feat + Gloomstalker Dread Ambusher + WIS bonus → almost always first in initiative.
- **Assassinate:** Auto-crit against any target that is Surprised or hasn't taken a turn yet.
- Turn 1: all enemies are surprised or have no turn → all attacks auto-crit.
- **Surgeon's Subjugation Amulet:** First crit Paralyzes a humanoid → all subsequent attacks are also auto-crit.
- **Stillmaker + Hold Person:** Paralyzes humanoid → all melee attacks auto-hit and auto-crit.

---

## PHALAR ALUVE

- **Shriek (1/Short Rest):** Enemies get -1d4 to attack rolls and saving throws (similar to Bane). Use at the start of boss fights.
- **Sing:** Allies get +1d4 to attack rolls and saving throws + Thunder/Psychic resistance.
- Only one mode (Shriek or Sing) can be active at a time.
- Trash mobs: Shriek's action cost is usually not worth it vs. just attacking.
- Boss fights: Always open with Shriek.

---

## EMPOWERED EVOCATION vs NECKLACE OF ELEMENTAL AUGMENTATION

- **Empowered Evocation** (Evocation Wizard level 10): Adds INT modifier to damage dice of Evocation spells. **Once per turn limit.**
- **Necklace of Elemental Augmentation:** Adds Spellcasting Modifier to elemental cantrip damage. **Every cantrip, every turn.**
- Different sources — they **stack**:
  - On Empowered Evocation turn: cantrip = 1d8 + INT (necklace) + INT (empowered) = 1d8+10
  - Other turns: 1d8 + INT (necklace) = 1d8+5
