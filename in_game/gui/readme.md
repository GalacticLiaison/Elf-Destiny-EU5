# Plan

create a genetic traits section, add to:

- people_lateral_view: for when searching for characters in your court

- character.gui => type character_info : seems to be used by all types of characters in game\in_game\common\attribute_columns\09_character.txt, probably for filtering search tables

- type character_frame_medium_with_labels_and_abilities : some type of portrait used by single_unit_window.gui ?

- character_tooltips.gui: used by TooltipCharacterHeader



set_variable = elf_tier_1 on characters than check if character has 

[CHARACTER.MakeScope.GetVariable('elf_tier_1').GetValue]


Character.GetTimedModifiers



From CK3 Texture:

		background = {
			fittype = centercrop
			alpha = 1

			texture = "gfx/interface/illustrations/aeluran_realm_laws/aeluran_realm_law_2.dds"

			using = Mask_Rough_Edges


			visible = "[And(Not(GuiLaw.IsEnacted), EqualTo_int32(PdxGuiWidget.GetIndexInDataModel, '(int32)2'))]"

			using = Color_Grey


			modify_texture = {
				texture = "gfx/interface/component_masks/mask_fade_horizontal.dds"
				blend_mode = alphamultiply
			}

			modify_texture = {
				texture = "gfx/interface/component_overlay/overlay_effect.dds"
				blend_mode = overlay
			}
		}