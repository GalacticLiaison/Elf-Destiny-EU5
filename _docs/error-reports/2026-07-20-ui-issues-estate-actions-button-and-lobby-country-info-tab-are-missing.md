# UI issues - estate actions button and lobby Country Info tab are missing
**Tags:** Ongoing Issue, Sev 2 - Severe Bug, EU5
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1528827984210038914)
---
## Report
**mder1.** · *2026-07-20*
TLDR: paradox changed the ui quite a bit, copy vanilla files and then re implement your changes might be the easiest way.

  1. in_game/gui/government_lateralview.gui — 1.3 moved the per-estate actions into a new window (estate_actions_lateralview.gui) reached only by a new hamburger button (ESTATE_ACTIONS_MENU_T != EstatesItem.OpenActionsWindow). ED's copy drops that button and still draws the old inline bribe/reduction buttons, so the new burger menu and what is behind is missing. Also missing: the <1% power estate text, the IO resolution voting piechart, and 1.3's cabinet rework (head-of-cabinet promotion, lock/unlock, compact view).
  2. in_game/gui/multiplayer_lobby.gui — 1.3's entire new "Country Info" tab (tab button + 970-line panel, GameLobby.IsCountryTabCountryInfo) is absent, so the tab never appears. This file also references Army_size_tooltip and Navy_size_tooltip (around lines 2446/2479), which don't exist in 1.3 anymore.
  3. in_game/gui/character_lateralview.gui and in_game/gui/unit_overview.gui , same thing.


government_lateralview.gui  27 old hunks vs vanilla,  1 ED hunk (cabinet) this one is visibly NOT working

multiplayer_lobby.gui  48 old hunks vs vanilla, 2 ed hunks might: work anyway

character_lateralview.gui 11 old hunks vs vanilla, 2 ed hunks: might work anyway

 unit_overview.gui    14 old hunks vs vanilla, only 2 ed hunks :might work anyway
---

## Discussion (1 comment)

**ikaguia** · *2026-07-20*
old vs new estate actions UI for comparison
![image.png](https://cdn.discordapp.com/attachments/1528827984210038914/1528846587982381086/image.png?ex=6a61c317&is=6a607197&hm=28062332ba0d4c835ca1171dae1b61efa7e79224c7c628c53456d043fed42609&)
![image.png](https://cdn.discordapp.com/attachments/1528827984210038914/1528846588360003655/image.png?ex=6a61c317&is=6a607197&hm=342cda0ca5e74db7144af0e11ff8a97344783d53602d5c172460fa39876c4f16&)
