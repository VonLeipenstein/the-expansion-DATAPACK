# get the current ammo of the cryoblaster and store it inside exp.ammo
execute store result score @s exp.ammo run data get entity @s SelectedItem.tag.ammo
execute unless score @s exp.ammo matches 0.. run scoreboard players set @s exp.ammo 0

# placing block
execute if score @s exp.ammo matches 1.. if score @s exp.hold_value_alt matches 1 run function expansion:items/cryoblaster/place_block
# shooting ice
execute if score @s exp.ammo matches 2.. if score @s exp.hold_value_alt matches 2 run function expansion:items/cryoblaster/shoot
# place wall
execute if score @s exp.ammo matches 5.. if score @s exp.hold_value_alt matches 3 run function expansion:items/cryoblaster/place_wall

# reload functions
title @s subtitle {"text":" "}
execute unless entity @s[nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run title @s[tag=!exp.used_ammo] title {"text":"Gather more water","color":"red","bold":true}
execute if entity @s[tag=!exp.used_ammo,nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run function expansion:items/cryoblaster/reload

execute store result storage expansion:ammo data.ammo byte 1 run scoreboard players get @s exp.ammo
item modify entity @s weapon.mainhand expansion:cryoblaster/ammo
tag @s remove exp.used_ammo
