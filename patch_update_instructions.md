# Files overwritten by this mod to check

Full-file copies of vanilla (diff against the new vanilla file, re-apply the Elf Destiny block):
in_game\common\estates\00_default.txt              (ED hunk: calaquendi_estate block before nobles_estate)
in_game\common\pop_types\00_default.txt            (ED hunk: calaquendi pop type on top + promote_to = calaquendi on peasants)
in_game\common\genes\01_genes_morph.txt            (ED hunk: ageless_* variants of the aging genes)
in_game\gfx\models\portraits\male_head\male_head.asset      (ED hunk: long_ears blend_shape + bs_long_ears attribute)
in_game\gfx\models\portraits\female_head\female_head.asset  (ED hunk: same)

Partial overrides (REPLACE: / INJECT: of one vanilla object; diff the vanilla object):
loading_screen\common\defines\elf_destiny_defines.txt          (NCharacter MAX_CHARACTER_AGE / MAX_AGE_SETUP_ERROR_LOG)
in_game\common\goods_demand\z_elf_destiny_pop_demands.txt
in_game\common\building_types\elf_destiny_building_overrides.txt   (REPLACE:mercury_patio)
in_game\common\cabinet_actions\elf_destiny_cabinet_actions_overrides.txt (INJECT:appease_estate)
in_game\common\government_reforms\elf_destiny_override_reforms.txt (REPLACE:mining_communities)
in_game\common\laws\elf_destiny_laws.txt                       (REPLACE:precious_metal_distribution_law, INJECT_OR_CREATE:coin_laws / marriage_law)

Per-object definitions the engine requires for every estate / good (add new ones whenever vanilla adds a `nobles_estate_*` or `*_silver_*` modifier type):
main_menu\common\modifier_type_definitions\elf_destiny_modifier_type_definitions.txt
main_menu\common\modifier_icons\elf_destiny_modifier_icons.txt
main_menu\localization\english\elf_destiny_modifiers_l_english.yml

Start setup: since EU5 1.4 the bookmark file (main_menu\common\bookmarks\00_bookmarks.txt) names the setup folder; it is `setup/1337`.
The mod's setup files live in main_menu\setup\1337\ and must follow that folder if vanilla renames it.

## GUI
in_game\gui\character_lateralview.gui
in_game\gui\government_lateralview.gui
in_game\gui\multiplayer_lobby.gui
in_game\gui\unit_overview.gui
in_game\gui\z_override_types.gui      (types character_titles, TooltipCharacterHeader, row_building_card)
in_game\gui\panels\situation\portal_network.gui   (mod-only panel, but uses vanilla templates)
