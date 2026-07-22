# Elf Destiny Trailer — OBS Shot List (v1)

**Recording settings:** 1080p60 (1440p if the rig allows), one shot per file, MKV or MP4, high bitrate (CQP 18–20 or ≥40 Mbps CBR). Hide OBS/Steam overlays. UI scale at default or slightly larger — text must be readable at YouTube stream size. Record **5–10s of handles** before/after each called action. Name files exactly as below.

**General staging:** see `save_prep.md`. Most shots come from one prepared save ("SHOWCASE save") plus a fresh-start save for Act 1–2. Pause the game for UI shots; run at speed 3–4 for map life. F9/screenshot key for stills if needed.

| # | Filename | Len | What to capture | Staging |
|---|---|---|---|---|
| 01 | `shot_01_quiet_world.mkv` | 20s | Fresh 1337 start as a human nation. Slow zoom-out from capital to continent view, political map mode. No mod UI visible — should look vanilla. | Fresh-start save |
| 02 | `shot_02_forest_drift.mkv` | 15s | Slow camera drift across heavy forest terrain (terrain map mode or zoomed-in 3D), moody and empty. | Same |
| 03 | `shot_03_elven_reveal.mkv` | 15s | Zoom/pan revealing the elven nations' colors and CoAs (the 81 tags region). Political map mode, deliberate reveal movement. | Same |
| 04 | `shot_04_julia_arrives.mkv` | 12s | Event window: **"What Is an Archaeologist?"** (`elf_destiny_story.1`) with Julia portrait. Mouse hovers, no click for 5s, then click "I would know the truth of this—see her in!" | Console: fire `elf_destiny_story.1` |
| 05 | `shot_05_expedition.mkv` | 12s | **"Expedition to the Elven Ruins"** (`elf_destiny_story.11`) — linger, click "You have my support!". Optionally also the Fund Expedition character interaction menu. | Follows 04 |
| 06 | `shot_06_discovery.mkv` | 10s | **"A Radiant Discovery"** (`elf_destiny_story.2`) — amulet event art. Slow mouse-to-option, click "Reach out and grasp the amulet". | Follows 05 (fires ~2 months later; speed up) |
| 07 | `shot_07_visions.mkv` | 12s | **"A Powerful Presence"** (`.21`) and **"Visions of a Past Long Gone"** (`.22`) windows. | Follows 06 |
| 08 | `shot_08_the_choice.mkv` | 8s | Hover between the three options on `.22`, settle and click **"I will adopt Elven culture."** Capture the tooltip showing all pops/characters converting. | Same window |
| 09 | `shot_09_transformation.mkv` | 15s | The payoff: **"A Surprising Transformation"** (`.23`) + court/ruler portraits now with elf ears. Then culture map mode showing the realm flipped elven. | Follows 08 |
| 10 | `shot_10_pops_converted.mkv` | 8s | Population/culture panel: every pop elven culture, elven institution at 100%. | Same save |
| 11 | `shot_11_red_witches.mkv` | 12s | **"Crimson Visitors"** (`elf_destiny_story.4`/`.41`) — Matriarch portrait. Click through one option. | Console-fire `elf_destiny_story.4` on the converted save |
| 12 | `shot_12_portal_ruins.mkv` | 10s | Capital location view with **Grand Portal Ruins** building; open its tooltip/description. | SHOWCASE save, or `elf_trailer.3` staging event then revert |
| 13 | `shot_13_portal_restored.mkv` | 12s | **"The Portal Is Complete!"** event (`elf_destiny_story.53`) + capital now showing **The Grand Portal** building. | Console-fire `elf_destiny_story.53` (after staging) |
| 14 | `shot_14_network_mapmode.mkv` | 15s | **Portal network map mode** with many nodes lit; open the Portal Network situation panel; pan across the network. | `elf_trailer.4` staging event (hub + nodes everywhere) |
| 15 | `shot_15_teleport_ui.mkv` | 10s | Select a full army stack on a portal location; open the teleport action; show the destination picker with the price tooltip (cost scales with distance + regiments). | SHOWCASE save |
| 16 | `shot_16_teleport_jump.mkv` | 20s | **MONEY SHOT.** Army on portal → execute teleport → cut/zoom across the continent → army standing at the far portal. Do 3+ takes, varying camera (one zoomed-out take that shows both ends in frame if possible). | Same |
| 17 | `shot_17_tech_tree.mkv` | 12s | Advances screen: scroll the elven advances — Elven Lore, Mythril Working, Magic levels 2–6, Grand Portal Restored, Beast Tamers. Hover 1–2 tooltips. | Any elven save |
| 18 | `shot_18_unit_roster.mkv` | 15s | Military screen / recruitment showing **Fey Archers, Highborn Lancers, Wolf Riders, Ranger High Guard, Mythril Plated Fey Vanguard, Magi / Calaquendi High Magi** with tooltips. Then 3D unit models on the map. | SHOWCASE save (`elf_trailer.7` for gold) |
| 19 | `shot_19_forest_battle.mkv` | 20s | A battle in forest terrain: elven stack vs larger human stack, battle interface showing the elven side winning (discipline/terrain bonuses visible if possible). 2+ takes. | SHOWCASE save; declare a war for the camera |
| 20 | `shot_20_ascension_tiers.mkv` | 15s | Ruler character panel: racial trait tooltip at a low elf tier → use the **Ascend** action → tier increases. Capture portrait change. | `elf_trailer.5`/debug menu to set tiers between takes |
| 21 | `shot_21_fae_moment.mkv` | 15s | The top-tier moment: ruler reaching **elf_tier_9** — portrait + trait tooltip, any ascension event window (`ascension_events.1`). Slow, reverent capture. | `elf_trailer.6` |
| 22 | `shot_22_calaquendi.mkv` | 12s | Calaquendi estate panel: estate overview + scroll the privileges (War Masters, Personal Dominions…). Hover one juicy tooltip. | SHOWCASE save |
| 23 | `shot_23_aeluran_faith.mp4` | 12s | The **divine blessing ritual**: perform the Receive Blessing action and gain a blessing (show the ritual and the blessing granted). | Blessing cost forced to 1 (see README revert list) |
| 24 | `shot_24_genetic_traits.mp4` | 12s | Character sheet showing a character's **genetic traits** (good genes and/or a bloodline). Hover a trait or two. | Any elven save with a trait-rich character |
| — | `Images_for_trailer/blessing_*.png` (collage) | — | **Asset, no recording.** Blank-screen collage of the 5 blessing icons transitioning in under the text. | Built in edit |
| — | `Images_for_trailer/trait_*.png` (collage) | — | **Asset, no recording.** Blank-screen collage of the standard genetic-trait icons (33, non-bloodline). | Built in edit |
| — | `Images_for_trailer/trait_bloodline_*.png` (collage) | — | **Asset, no recording.** Blank-screen collage of the 6 house bloodline icons. | Built in edit |
| ~~25~~ | ~~`shot_25_parliament`~~ | — | **CUT for time** (Elven Parliament). Some of these panels already appear elsewhere. | — |
| 26 | `shot_26_beauty_broll.mkv` | 30s | B-roll grab bag for the finale montage: nice zooms over elven lands, cities, armies marching, map modes. Several short moves. | Any |
| 27 | `shot_27_title_still.png` | — | Clean screenshot of the mod thumbnail/title art (or export the source image directly — confirm it's not AI-generated per ModCon rules). | — |

**Priorities if time is short:** 16 (teleport), 21 (Fae ascension), 09 (transformation), 14 (portal network) are the trailer; everything else has fallbacks.

**Note on combined captures:** several planned shots were recorded together into single clips (filenames in `footage/` reflect reality): `shot_06-07`, `shot_08-09`, `shot_15_and_16`, `shot_18_and_19` (extended unit look, which replaced the dropped forest battle — old shot 19), and `shot_20_and_21` (ascension tiers + Fae moment).
