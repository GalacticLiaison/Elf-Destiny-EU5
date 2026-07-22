# Elf Destiny 1.1.1 — calaquendi estate buildings are destroyed when a location upgrades to Megalopoli
**Tags:** EU5
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1528711870242885733)
---
## Report
**mder1.** · *2026-07-20*
Severity: players permanently lose all six calaquendi estate buildings in any location that reaches Megalopolis rank. No warning, no refund.

  Affects: 1.1.1 (current), and every prior version. Base game 1.3.x, no other mods required — reproduced on vanilla + Elf Destiny alone.

  Cause

  In in_game/common/building_types/elf_destiny_estate_building_types.txt, all six buildings declare city = yes but omit megalopolis entirely. An omitted location rank defaults to no, and the engine culls buildings that are illegal for a location's current rank.
mallorn_tree_grove
baths_of_starlight
perfume_garden_of_valinor
wine_cellar_of_elder_days
feasting_hall_of_the_trees
grand_archives

  Reproduce

  1. Vanilla + Elf Destiny 1.1.1, elven country.
  2. Build any of the six in a city-rank location.
  3. Upgrade that location to Megalopolis (market centre, country capital, pop ≥ 400, not a subject).
  4. The building is gone from the location on completion.

  Fix — add one line to each of the six rank blocks:

        rural_settlement = yes
        town = yes
        city = yes
        megalopolis = yes

  ---
  Secondary, same file family: the 6 sponsor_* issues in in_game/common/parliament_issues/elf_destiny_calaquendi_parliament_issues.txt gate on town/city only (12 OR blocks, plus 6 order_by weightings at lines 29, 82, 135, 188, 241, 294). Zero mentions of megalopolis. So even after the fix above, the parliament
  can't place these buildings in a megalopolis — and a realm whose locations have all outgrown city rank loses the issues entirely, since allow finds no valid location. Adding location_rank = location_rank:megalopolis to those blocks would close it.
