tag @s remove exp.compressor.new

function expansion:blocks/set_rotation

scoreboard players set @s exp.oxygen_lvl 0
scoreboard players set @s exp.oxygen_max 100

execute rotated as @s positioned ~ ~1 ~ run function animated_java:compressor/summon {args: {}}
execute positioned ~ ~1 ~ run ride @n[type=minecraft:item_display,tag=aj.compressor.root,distance=..0.1] mount @s

setblock ~ ~ ~ minecraft:cobblestone{CustomName:{translate:"exp_blocks_compressor_name",color:"dark_gray"}} replace