item replace entity @s armor.head from entity @p weapon.mainhand expansion:portal/count_to_1

function expansion:contraptions/portal/cores/detect_color

execute store result score @s exp.hold_count run data get entity @p SelectedItem.Count
scoreboard players operation @s exp.hold_count -= #1 exp.const

execute if score @s exp.hold_count matches 1.. run item replace entity @p weapon.mainhand from entity @p weapon.mainhand expansion:utility/set_count_from_score
execute if score @s exp.hold_count matches 0 run item replace entity @p weapon.mainhand with minecraft:air

# exp.hold_value keeps track of core count
execute as @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] run function expansion:contraptions/portal/cores/add_core_count

playsound expansion:portal.insert_core block @a ~ ~ ~ 1 1 0