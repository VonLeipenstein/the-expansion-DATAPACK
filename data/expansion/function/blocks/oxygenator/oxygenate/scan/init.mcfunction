execute at @s positioned ~ ~-1 ~ run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker

# reset the block counter
scoreboard players reset @s exp.hold_count

# reset the entities recieving oxygen from this oxygenator
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s remove exp.recieved_oxygen

execute if entity @s[tag=!exp.pressurized] run function expansion:blocks/oxygenator/gui/animated_texture/start
