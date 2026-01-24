# Genetic Traits
Because the modifiers of traits like Ruler traits ONLY are applied when that character is an actual active ruler, we needed to do something different for Genetic Traits

Traits defined here are only used for the fancy tooltip, but never actually assigned (this way they dont take up a ruler trait slot either.)
This is why they have
```
	allow = {
		always = no
	}
```

Instead a duplicate static modifier version is created in `main_menu\common\static_modifiers` to actually apply the modifier effects.