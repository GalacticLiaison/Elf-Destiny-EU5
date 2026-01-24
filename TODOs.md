Rename localization for each pop tier
Make Calaquendi actual top tier of promotion
    - thinking just make new pop type for all tiers, they roll up into the same estates
update dynasty CoA
update country flag CoA
make some good looking starter characters
make calaquendi MAA levies
polish other elf levy types
localization overall
What is an Architect quest line
    - maybe even abbreviated, aeluran visit, portal piece quest, restore portal
    - could then unlock further ascension
add unique elf buildings
add unique elf reforms


# Buildings
if all else fails when trying to populate existing buildings with elf pops, maybe we can do a full convert when Elf Lords claim human locations and vice versa,
- Downside: extra scripting
- What happens to human population in location? Convert to slave? Expel/Migrate Out?
    - or maybe with a harmony law they would stay and work... so then race specific buildings suck

GRAND PORTAL
- holy site
- building

When your nearing release, ask in co-op if anyone has elf ears they would share, show off your implementation.
    - you want plenty of head start to get first to market
    - alternatively, maybe try to spend a little time to see if you can convert assets between games/ most likely not



Common Language of countries: => elvish

Rename at least town and city locations to cool elvish names, if ambitious do them all.

Polish revealed locations map for each elf country

polish governments for each elf country

give elf countries some kind of elven tradition boost to stop assimilating to neighboring huge human nations
    - seems perfect for an advancement


# Ascension
- use religious influence as currency to do ritual


Clean up the damn error log

may want to consider modifying the on_start pop converter to not convert other elf pops and then blend some other elf cultures into the starting populations so acceptance levels can be set

polish genetic trait section, handle multi-row and make sure its present in every character portrait view thats appropriate


Market centers


looking at country_base_values in auto-modifiers, we may need to add values for calaquendi, eg. estate_target_satisfaction

# Expeditions


# genetic traits
- test inheritance of all
- add proper modifiers
- double check that traits = static modifiers
- fix UI to handle more than 4 traits
- should we move race trait to its own box? implement human?

- add inbred as opposite of pure blood

- maybe make a tooltip game concept that lists the possible bloodlines that are obtainable
- maybe add a simple bloodline event from CK3


right now it sucks that we must use peasant pop promotion for calaquendi


elf starting debt
- maybe increase FOOD RGO levels so we arent importing food into market
- increase peasant pop in every location under 5k
    - this will fill villages buildings to boost economy
- add a on_start to add a single market village level to all locations with nothing at start

create new government policy: "Masters of the wood realms" or something like that
    - increase food production in forest tiles and lumber/fur/wild game out put

add some starter labor buildings like masonry to boost economy



people of the bow?
    - government reform or estate privledge?
        - boosts archer power
        - penalizes other types?


## Grok localization
- your really should consider putting most descriptions through Grok for formatting/grammar/readability suggestions


on_character_created
- if doesnt have a genetic trait, small chance to add a common one, rare chance to add a rare one


almost all modifiers icons need to be made