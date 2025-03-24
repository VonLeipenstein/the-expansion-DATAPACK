# prompt players inside with what happened
execute if score @s exp.bool matches 2 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/blockcap
execute if score @s exp.bool matches 3 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/scancap
execute if score @s exp.bool matches 4 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/noleaves
execute if score @s exp.bool matches 5 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/button
execute if score @s exp.bool matches 6 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/toolong
execute if score @s exp.bool matches -1 on passengers if entity @s[tag=exp.oxygen_link] on origin run function expansion:blocks/oxygenator/oxygenate/titles/button

# trigger gui flash if leaves are missing
execute if score @s exp.bool matches 4 run scoreboard players set @s exp.cooldown 20

# remove all the oxygen scanner markers
execute as @e[type=marker,tag=exp.oxygen_marker,predicate=expansion:compare_score/unique_id,distance=..25] run kill @s

# remove oxygen from connected players
execute on passengers if entity @s[tag=exp.oxygen_link] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/remove

# stop the fan
function expansion:blocks/oxygenator/gui/animated_texture/stop

# remove the tag that ensures immediate access to oxygen, the base will have to be entirely repressurized.
# remove button stop tag
tag @s remove exp.pressurized
tag @s remove exp.depressurize

# prevent another scan
scoreboard players reset @s exp.timer_1
scoreboard players set @s exp.hold_count 0
scoreboard players set @s exp.hold_value 0

# update the button
loot replace block ~ ~ ~ container.1 loot expansion:items/gui/icons/pressure