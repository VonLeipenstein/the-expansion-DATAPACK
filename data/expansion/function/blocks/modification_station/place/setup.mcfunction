# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.modstation.new

function expansion:blocks/set_rotation

# block
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{translate:"exp_blocks_modstation_name",color:"dark_gray"}} replace

# pre-load GUI
function expansion:blocks/modification_station/gui/none

# summon a bot for each snowball and link it
execute on passengers if entity @s[tag=exp.modstation.bot_link] run function expansion:blocks/modification_station/place/link_bots

# link each bot back to the block
data modify storage expansion:owner data.store_UUID set from entity @s UUID
function expansion:blocks/modification_station/mod_robots/link_to_entity