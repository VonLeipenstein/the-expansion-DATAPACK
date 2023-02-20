# check if the item is actually valid for enhancement so I don't remove random items
item replace entity @s weapon.mainhand from block ~ ~ ~ container.3
tag @s add exp.valid_item
execute unless predicate expansion:nbt_checks/enhancer/dye_tag_test unless block ~ ~ ~ dropper{Items:[{Slot:3b,tag:{exp_module:1b}}]} run tag @s remove exp.valid_item
item replace entity @s weapon.mainhand with minecraft:air

# run the modification
execute if entity @s[tag=exp.valid_item] run function expansion:blocks/enhancer/enhance

# subtract count or set it to 0
execute store result score @s[tag=exp.valid_item] exp.hold_count run data get block ~ ~ ~ Items[{Slot:3b}].Count
scoreboard players operation @s[tag=exp.valid_item] exp.hold_count -= #1 exp.const
execute if score @s[tag=exp.valid_item] exp.hold_count matches 1.. run item modify block ~ ~ ~ container.3 expansion:utility/set_count_from_score
execute if score @s[tag=exp.valid_item] exp.hold_count matches 0 run item replace block ~ ~ ~ container.3 with minecraft:air

execute if entity @s[tag=exp.valid_item] run item replace entity @e[type=armor_stand,tag=exp.enhancer_display,limit=1,sort=nearest] armor.head from block ~ ~ ~ container.5

# play sound
execute if entity @s[tag=exp.valid_item] run playsound minecraft:block.anvil.use voice @p
# remove tag
tag @s remove exp.valid_item