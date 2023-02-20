summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:0b,Invisible:1b,Tags:["exp.tesla_coil","exp.block","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012311}}]}
execute unless entity @s[gamemode=creative] run item replace entity @s weapon.mainhand with air
setblock ~ ~ ~ end_stone replace
setblock ~ ~1 ~ minecraft:redstone_torch keep
playsound minecraft:block.metal.place voice @s