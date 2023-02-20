summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["exp.compressor","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012304}}]}
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:'{"translate":"exp_blocks_compressor_name","color":"dark_grey"}'} replace
playsound minecraft:block.metal.place voice @s