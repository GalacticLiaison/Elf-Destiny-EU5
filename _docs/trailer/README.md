# Elf Destiny — ModCon Trailer Project

**Read this first.** This folder contains everything for the ~5-minute Elf Destiny trailer being submitted to ModCon (virtual Paradox modding conference, streamed on a monetized YouTube channel). This README is the master context doc for any agent or human picking up the work.

## Final master (current deliverable)

> **📦 ARCHIVED (2026-07-19):** all trailer media moved to **`C:\Users\Tirith\Videos\2026_trailer\`**
> — `deliverables\` (final masters + SRTs), `trailer_project\` (footage/cards/audio/final act
> renders), `pipeline\` (all build scripts + `REBUILD.md` with the exact master-rebuild recipe).
> Superseded intermediates (~60 GB: old ProRes generations, drafts, POCs, music tests) were deleted.
> This repo keeps only the docs, the Cinzel font, and an SRT copy.

- **Shipped:** `2026_trailer\deliverables\Elf_Destiny_final_2026_v2.mp4` + `.en.srt` (2026-07-19).
  Cinzel cards with **deep shadow** + **card breathe** + **gold glow** blessing collage + full
  **SFX pass** (25 procedural events, teleport riser→silence→impact at 2:06; title-card swap
  deliberately SFX-free). 5:12 · 1080p60 · H.264 CRF 15 · AAC 48 kHz · −14.4 LUFS / −0.7 dBTP.
  Push-ins were tried and reverted (centered zoom crops edges; reads badly on edge-anchored EU5 UI).
- Prior versions in `deliverables\`: `Elf_Destiny_Cinzel_master.mp4` (music-only baseline — also the
  input for SFX remixes), `Elf_Destiny_final_2026.mp4` (Cambria), `Elf_Destiny.mp4` (first meme cut).
- ⚠️ The Resolve project `Elf_Destiny_Trailer` still references media at the old repo paths — see
  `pipeline\REBUILD.md` for the relink/copy-back procedure before any act re-render.
- **`renders/Elf_Destiny_final_2026.en.srt`** (+ a `Elf_Destiny_Cinzel_master.en.srt` copy) — English subtitles (SubRip), for the ModCon organisers. 43 cues: every on-screen text card (verbatim, timed frame-accurately) + 4 bracketed audio cues (opening music, music-fade, two end memes). Font-independent — works for either master (basename-matched for auto-load). The two end-meme cues were finalized by hand (`["I know it's my Destiny"]`, `[Gimli: "Never trust an Elf!"]`). (Fixed 2026-07: cues 18/19 now read the actual Act 4 unit text "Recruit unique elven regiments and levies." / "And field the Magi, a brand new unit type." — earlier drafts had superseded "Fey Archers…/Wolf Riders…" copy from unused card files.)

### Polish experiments (2026-07, awaiting user verdicts)

- **`renders/Elf_Destiny_Cinzel_SFX_test.mp4`** — sound-design pass: 26 procedurally-synthesized SFX events (kit + event map in `audio/sfx/`, `scratchpad/mix_sfx.py`). Teleport riser→silence→impact lands at 2:06 per user note. Video is stream-copied from the Cinzel master.
- **`renders/Elf_Destiny_Cinzel_GRADED_test.mp4`** — color-as-storytelling pass (cold→warm at the transformation + vignette/grain). **User verdict: shelved** — keep for reference, not shipping. The SFX pass IS kept. Gotcha learned: an xfade grade-morph needs the warm branch pre-trimmed to the transition offset (xfade's B input starts at its own t=0).
- Music rounds 2–3 (`audio/ai_candidates/`) auditioned; **user verdict: keep the current V1 music** (opener_a + epic_b).

### Cinzel font swap (2026-07)
- Font: **`fonts/Cinzel.ttf`** (Google Fonts, SIL OFL; `fonts/OFL.txt`). Cinzel is all-caps (lowercase → small caps).
- All 39 text cards were re-baked in Cinzel Bold (ProRes 4444 alpha, auto-fit to width, same y-positions incl. the Act 5 lower-third collage cards) and **overwrote the card `.mov`s in `cards/`** (matching the exact timeline filenames incl. `*v2`/`*f` variants). **Originals backed up in `cards/_cambria_backup/`** — restore those + reload the Resolve project to revert to Cambria.
- Rebuild path: overwrote card movs → reloaded `Elf_Destiny_Trailer` project (forces media re-read) → re-rendered the 6 acts to ProRes (`renders/cinzel_acts/ca1`–`ca6`) → same single-pass ffmpeg concat/audio/meme as below. The Cinzel card generator is `scratchpad/bake_cinzel.py` driven by `scratchpad/card_spec.json` (master-verified text/size/position/duration for all 39 cards).
- **How it was built (quality-first path, one lossy generation only):** each of the 6 final act timelines was re-rendered from Resolve to **ProRes 422 HQ** intermediates in `renders/prores/` (`pa1`–`pa6`, visually lossless, ~15 GB total), then a **single** ffmpeg pass does the xfade cross-dissolves (offsets 29.216 / 78.016 / 128.736 / 187.947 / 271.328, d=0.8), the meme tail (`fade` out @305.83 d=1.5 → `tpad` +4.8 s black), and the V1 audio (opener_a → looped epic_b, loudnorm I=-16, + pokemon @307.83 s + gimlee @310.16 s) → the H.264 above. This avoids the compounding H.264 generation loss of the earlier per-act-reencode drafts (why the old `Elf_Destiny.mp4` was only ~103 MB — repeated lossy re-encodes, not more efficiency).
- **Source act timelines:** Act1_POC, Act2b, Act3b, Act4b, Act5d, Act6e.
- **⚠️ Audio still to clear:** V1 music is AI-generated (Stable Audio 3). Per ModCon Rule 3 (below), clear it with organisers before shipping, or swap the royalty-free fallback from `music_shortlist.md`. `shot_26` finale b-roll is still the `shot_02` forest-drift stopgap.

## Deadline

- **Submission due: July 11, 2026.** Internal target: **July 8–9** (buffer + final review).
- ModCon organisers send status checks during production — **respond to them**; silence is the one thing their rules explicitly punish.

## Hard constraints (ModCon rules)

1. **Royalty-free music only**, or pre-cleared with organisers — report the chosen track to them early (YouTube Content ID risk).
2. **No attention-drawing generative AI**: no AI imagery, no AI songs, no "epic" AI voiceovers. Explicitly allowed: AI script-writing, AI editing automation, subtle AI assistance.
3. Format locked accordingly: **text cards + music over pure in-game footage. No voiceover.**
4. Before using the mod's thumbnail art as the title card, confirm it is not AI-generated.

## Creative direction

Six acts (full copy in `script.md`, timed beat sheet inside):

1. **Cold open** (0:00–0:30) — vanilla-looking 1337 map → elven reveal
2. **The Transformation** (0:30–1:30) — Julia Melwood story chain, human nation becomes elven
3. **The Portal Network** (1:30–2:30) — *centerpiece*: Grand Portal restored, army teleports across the continent
4. **Power & Ascension** (2:30–3:30) — elven tech, units, forest battle, 9-tier ascension → Fae
5. **Elven Society** (3:30–4:15) — Calaquendi estate, Aeluran matriarchy, parliament, goods
6. **Finale** (4:15–5:00) — beat-synced montage + stat cards + title

Pacing: shots 3–8s cut on music beats; long holds only for the teleport and Fae moments. Typography: Cinzel (free SIL OFL font), ivory on black.

## Files in this folder

| File | What |
|---|---|
| `script.md` | Final text-card copy + timed beat sheet |
| `shot_list.md` | 27 numbered OBS shots with filenames, durations, staging refs |
| `save_prep.md` | How to stage every game state (saves, console commands) |
| `trailer_staging_events.txt` | **Temporary** cheat-event pack (`event elf_trailer.1`–`.7`). Copy into `in_game/events/` only while recording; **never ship it** |
| `music_shortlist.md` | 8 verified royalty-free tracks (Pixabay no-attribution / Kevin MacLeod CC-BY) with licenses |
| `footage/` | (to be created) recorded OBS shots, named per shot list |
| `audio/` | (to be created) the chosen music track(s) |

## ⚠️ Temporary debug changes to REVERT before release

These live in shipped mod files (not `_docs/`), added for trailer capture. Search `TRAILER DEBUG` to find them:

- **`in_game/common/building_types/elf_destiny_building_types.txt`** — `prime_portal_hub` and `lesser_portal_node` had `build_time`, `expensive`, and requirement gates zeroed/relaxed so portals instant-build for the teleport demo. Each change has the original value in an adjacent `# TRAILER DEBUG ... was:` comment. **Revert all before release.**
- **`in_game/common/character_interactions/debug_interactions.txt`** — added debug interactions (`debug_discover_*`, `debug_unlock_all_elven_tech`, `debug_transport_portal`, `debug_restore_portal`). These are debug/game-rule gated so they're safe to ship, but remove if you want a clean release. Loc in `elf_destiny_debug_events_l_english.yml`.
- **`in_game/common/unit_types/elf_destiny_elf_units.txt`** — `ranger_high_guard`'s `country_potential` reform gate relaxed to `is_elven_country = yes` so it's recruitable from the start for the unit-roster shot (shot 18). Original preserved in a `# TRAILER DEBUG ... was:` comment. **Revert before release.**
- **Ascension + blessing costs forced to 1 religious influence** for the ascension shots (shots 20–21), across four files (search `TRAILER DEBUG`): `common/prices/elf_destiny_misc_prices.txt` (`ascension_base_price`/`blessing_base_price` 50/75 → 1), `common/script_values/elf_destiny_elf_race_script_values.txt` (`ascension_price_solo` → flat −1, `ascension_price_family` 1.5x disabled), `common/generic_actions/ascend.txt` (tier scaling on displayed price disabled), `common/generic_actions/receive_blessing.txt` (per-blessing scaling disabled). Each has originals in adjacent comments. **Revert all before release.**

## Editing pipeline (the AI experiment)

The goal is for AI to do as much of the editing as possible, directly inside DaVinci Resolve.

**Working as of June 9, 2026:**
- **DaVinci Resolve Studio 21.0** installed + activated (required — the free edition blocks external scripting). Gotcha learned: the Studio installer silently no-ops if the same-version free edition is installed; uninstall free first.
- **MCP server**: samuelgursky/davinci-resolve-mcp v2.36.1 at `C:\Users\Tirith\AppData\Local\davinci-resolve-mcp\`, registered as `davinci-resolve` in the user-scope Claude Code MCP config (tools load on session start; Resolve must be running, Preferences → System → General → External scripting = Local).
- **Direct API alternative** (no MCP needed): run Python with `C:\Users\Tirith\AppData\Local\davinci-resolve-mcp\venv\Scripts\python.exe` — see `smoke_test.py` in that folder for the connection boilerplate (env vars + DaVinciResolveScript). Smoke test passed: connect, create project, timeline, settings, save.

**Assembly plan:** import footage + music → derive beat grid from the chosen track (librosa if needed) → build timeline per beat sheet with in/out points → Text+ cards (Cinzel) → hard cuts dominant, dissolves at act boundaries → music fades, ~-1 dBTP → render 1080p drafts → iterate on user feedback.

**Known API weak spots:** programmatic cross-dissolve transitions and Text+ insertion can be flaky. Mitigations: hand-built template project with a styled Text+ generator that scripts duplicate/retime; or fallback pipeline = FFmpeg/MoviePy draft + `.otio` timeline import into Resolve for finishing.

**Final delivery:** human polish pass (color, stubborn transitions), 1080p60 render (confirm ModCon's exact spec), watch end-to-end at stream resolution, compliance checklist, submit.

## Status & schedule (as of June 9, 2026)

Done: creative package, staging events, music shortlist, Resolve Studio + MCP setup + smoke test.

| Week | Milestone |
|---|---|
| Jun 9–15 | User: pick music, report to organisers; stage saves; record first shot batch |
| Jun 16–22 | User: finish all 27 shots (3+ takes of shots 16/19/21) |
| Jun 23–29 | AI: first full draft in Resolve; iterate on feedback |
| Jun 30–Jul 6 | Lock edit; human polish pass |
| Jul 7–9 | Final render, compliance check, **submit** |

Currently blocked on user: music pick → `audio/`, footage → `footage/`.

## Related context

- Plan file: `~/.claude/plans/i-am-going-to-jiggly-grove.md` (original approved plan)
- Agent memory: `project_modcon_trailer.md` in the Claude project memory dir
- The trailer-prep work must not touch shipped mod content; `_docs/` is not part of the playable mod
