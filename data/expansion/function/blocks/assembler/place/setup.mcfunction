tag @s remove exp.assembler.new

function expansion:blocks/set_rotation

execute rotated as @s positioned ~ ~1 ~ run function animated_java:assembler/summon {args: {}}
execute positioned ~ ~1 ~ run ride @n[type=minecraft:item_display,tag=aj.assembler.root,distance=..0.1] mount @s

setblock ^ ^ ^ minecraft:barrel{CustomName:{translate:"exp_blocks_assembler_gui_name",color:"dark_gray"}} replace