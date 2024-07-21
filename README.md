Datapack that adds wands similar to those seen in https://www.youtube.com/watch?v=I5lOKaQl-cY.

# API
## Functions
/function noi:altar/place - Places a wand editor.

/function noi:wand/create {size:Byte,base_cost:Int} - Gives a wand to the player this was run as. Size is the number of spell slots the wand you are creating has has and works from 0 to 16, base_cost is the cost added after all other calculations and can be any signed Int.

/function noi:reset_settings - Sets the fake players in noi.settings to the configuration I usually use in public implementations of NCC. Run this to make the pack work when you first install it if you don't really care about the settings.

## Scoreboard fake players in noi.settings
.global_max_mana - Players will gain mana over time if they have less mana than this amount. Set this to a negative number if you want to set maximum mana manually.

.mana_tick_length - The length of a mana tick, which is when mana in increased along with some other things, more on those later.

.allow_placing_wand_editors - This is a boolean (0 or 1) that allows players to sneak+rightclick while holding a wand to create a wand editor that will be removed once the wand is taken out of it. This does not affect altars placed with commands.

.limit_default_wand_textures - Boolean that, if true, limits generated wand textures to a subset of those in the resource pack.

## Others
The entity tag "noi.nowand" makes players who have it unable to cast spells and immune to targetting spells.

The scoreboard "noi.max_mana" dictates the amount of mana above which players stop generating mana. Set automatically if .global_max_mana isn't negative.

## Read-only information
The item tag "#noi:spells" contains every item that can be placed into the wand editor.

The scoreboard "noi.ticks_without_spell" increments for every player every mana tick and is reset when they cast a spell.

The item entities created by the function noi:wand/create have the tag "noi.given_wand".
