polish other elf levy types
localization overall

When your nearing release, ask in co-op if anyone has elf ears they would share, show off your implementation.
    - you want plenty of head start to get first to market
    - alternatively, maybe try to spend a little time to see if you can convert assets between games/ most likely not

Common Language of countries: => elvish

Rename at least town and city locations to cool elvish names, if ambitious do them all.

give elf countries some kind of elven tradition boost to stop assimilating to neighboring huge human nations
    - seems perfect for an advancement


Clean up the damn error log

may want to consider modifying the on_start pop converter to not convert other elf pops and then blend some other elf cultures into the starting populations so acceptance levels can be set

polish genetic trait section, handle multi-row and make sure its present in every character portrait view thats appropriate


Market centers


looking at country_base_values in auto-modifiers, we may need to add values for calaquendi, eg. estate_target_satisfaction

# genetic traits
- test inheritance of all
- add proper modifiers
- double check that traits = static modifiers
- fix UI to handle more than 4 traits
- should we move race trait to its own box? implement human?

- add inbred as opposite of pure blood
- also missing purer/purest blooded

- maybe make a tooltip game concept that lists the possible bloodlines that are obtainable
- maybe add a simple bloodline event from CK3


right now it sucks that we must use peasant pop promotion for calaquendi


elf starting debt
- increase peasant pop in every location under 5k
    - this will fill villages buildings to boost economy


## Grok localization
- your really should consider putting most descriptions through Grok for formatting/grammar/readability suggestions


on_character_created
- if doesnt have a genetic trait, small chance to add a common one, rare chance to add a rare one


almost all modifiers icons need to be made


maybe a calaquendi privledge that speeds up the cooldown on call parliament!

maybe a character interaction debug cheat menu to assign genetic traits


# Final Pass on culture/religion/country colors