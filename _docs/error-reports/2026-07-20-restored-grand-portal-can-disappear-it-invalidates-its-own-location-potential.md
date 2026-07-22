# Restored Grand Portal can disappear — it invalidates its own location_potential
**Tags:** Ongoing Issue, Sev 2 - Severe Bug, EU5
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1528798550614610113)
---
## Report
**mder1.** · *2026-07-20*
TLDR: Grand portal disappears when the city is upgraded to metropolis.

  Version: Elf Destiny 1.1.1 (commit 63e5498), EU5 1.3

  Summary. grand_portal gates on the ruins it replaces, but the restoration event destroys those ruins before constructing it. From the moment the portal exists its location_potential is false, so the engine culls it the next time it re-evaluates the location.

  Details. In elf_destiny_building_types.txt, grand_portal has max_levels = 1, obsolete = grand_portal_ruins, and location_potential = { has_building_with_at_least_one_level = grand_portal_ruins }. In elf_destiny_story_events.txt, elf_destiny_story.52 — in both the targeted branch (~L917) and the
  random_location_in_the_world fallback (~L931) — runs destroy_all_buildings_of_type = building_type:grand_portal_ruins and then construct_building = { building_type = building_type:grand_portal }.

  Reproduction. Restore the portal, then trigger a location re-evaluation (a rank upgrade does it). The portal is gone; every other building in the location survives. It first showed up on a city → megalopolis upgrade, which made it look like a rank bug — it isn't, the rank change is just the trigger.

  Suggested fix. Widen the potential to OR = { …grand_portal_ruins, …grand_portal }. Doesn't loosen the build gate, since max_levels = 1 already blocks a second portal.
