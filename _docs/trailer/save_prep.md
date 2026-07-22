# Elf Destiny Trailer — Save Prep & Staging Guide (v1)

Goal: stage every game state in `shot_list.md` in minutes, not hours of play.

## Setup

1. Launch EU5 with debug mode enabled (`-debug_mode` launch option) so the console is available.
2. **Copy `_docs/trailer/trailer_staging_events.txt` to `in_game/events/elf_destiny_trailer_staging_events.txt`.**
   This is a temporary file — delete it before any release/Workshop upload (it's the trailer-only cheat kit; see the header comments inside for the full event list).
3. Turn off in-game message popups you don't want on camera; consider hiding the debug/console UI before each take.

## The two saves

### A. Fresh-start save (Shots 01–03)
Plain 1337 start as a recognizable human nation near the elven regions. No staging needed — it must *look vanilla* for the cold open. Save as `trailer_fresh.eu5`.

### B. SHOWCASE save (Shots 12–26)
Start as (or play a short stint with) a mid-size nation, then console-stage everything:

| Step | Console | Result |
|---|---|---|
| 1 | `event elf_trailer.1` | Full elven conversion: culture, every character/pop, elven institution 100%, Elven Parliament, Realm Lord |
| 2 | `event elf_trailer.2` | Aeluran religion: country + all characters + pops |
| 3 | `event elf_trailer.3` | Grand Portal built in capital, `grand_portal_restored` advance, True Realm Lord |
| 4 | `event elf_trailer.4` | Prime Portal Hub in capital + Lesser Portal Node in every province capital (lights up the portal map mode) |
| 5 | `event elf_trailer.6` | Ruler to Elf Tier 9 (use `elf_trailer.5` for Tier 3, or `event elf_destiny_debug.1` for the full tier menu) |
| 6 | `event elf_trailer.7` | Gold (25× tax base), prestige, stability — build armies and buildings instantly-ish |

Then: recruit a showcase army (Fey Archers + Highborn Lancers + Wolf Riders + Magi + Mythril units), park stacks on two distant portal locations for the teleport shots, and pick a human neighbor to declare a "camera war" on for the forest battle. Save as `trailer_showcase.eu5`.

> If any advance/unit is still locked after staging, use the normal research console cheats for the remaining elven advances (Elven Lore → Mythril Working → Magic levels), or tell Claude — we'll extend the staging events.

## Story-event shots (Shots 04–11, 13)

Fire the real story chain on whichever save fits the shot:

- `event elf_destiny_story.1` — Julia arrives ("What Is an Archaeologist?") → click through to capture 04–09 in one sitting; the follow-ups chain automatically (`.11` → `.2` → `.21` → `.22` → `.23`). Some follow-ups have delays (2 days–2 months) — run at max speed between windows, or fire the next ID directly (`event elf_destiny_story.2`, etc.).
- `event elf_destiny_story.4` — Crimson Visitors / Red Witches (Shot 11).
- `event elf_destiny_story.53` — The Portal Is Complete! (Shot 13). Fire on the SHOWCASE save *before* running `elf_trailer.3` if you want the event and building to appear in the same take.

For the ascension event window in Shot 21: `event ascension_events.1` (or use the Ascend action in the religion UI for the authentic flow — it charges religious influence, which the war chest covers).

## Recording-day checklist

- [ ] OBS: 1080p60, one file per shot, filenames from `shot_list.md`, 5–10s handles
- [ ] Game UI clean: no console visible in frame, no debug text overlays during takes
- [ ] Money shots (16 teleport, 19 battle, 21 Fae) — minimum 3 takes each
- [ ] Drop all files in one folder, e.g. `_docs/trailer/footage/` (gitignored if large)
- [ ] **Delete `in_game/events/elf_destiny_trailer_staging_events.txt` when done**
