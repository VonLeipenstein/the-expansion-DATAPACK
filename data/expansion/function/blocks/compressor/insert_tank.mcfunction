# remove the players yhandheld item in the case of a normal swap
execute if score #temp exp.bool matches 1 run item replace entity @s container.0 from entity @p weapon.mainhand expansion:portal/count_to_1
execute if score #temp exp.bool matches 1 store result score @s exp.hold_count run data get entity @p SelectedItem.count
execute if score #temp exp.bool matches 1 run scoreboard players operation @s exp.hold_count -= #1 exp.const
execute if score #temp exp.bool matches 1 if score @s exp.hold_count matches 1.. run item modify entity @p weapon.mainhand expansion:utility/set_count_from_score
execute if score #temp exp.bool matches 1 if score @s exp.hold_count matches 0 run item replace entity @p weapon.mainhand with minecraft:air

# in the case of fast swap, immediately put the players helmet in the compressor
execute if score #temp exp.bool matches 2.. run item replace entity @s container.0 from entity @p armor.head
execute if score #temp exp.bool matches 2.. run item replace entity @p armor.head with minecraft:air

# extract the max tank level upon insertion
execute store result score @s exp.fuel_max run data get entity @s item.components."minecraft:custom_data".oxygen_max

execute if items entity @s container.0 minecraft:carrot_on_a_stick[minecraft:custom_data~{oxygen_tank:1b}] run function expansion:blocks/compressor/display_tank
execute if items entity @s container.0 minecraft:carrot_on_a_stick[minecraft:custom_data~{space_equipment:1b}] run function expansion:blocks/compressor/display_equipment

# remove the custom name from the interaction
data merge entity @n[type=interaction,tag=exp.compressor_rcdet] {CustomName:'""'}

# intiate the compression process
execute as @e[type=minecraft:armor_stand,tag=exp.compressor,limit=1,sort=nearest] run function expansion:blocks/compressor/compress/start

