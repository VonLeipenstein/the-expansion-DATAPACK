# summon the initial marker which has more scan options
scoreboard players set #temp exp.bool 1
execute at @s positioned ~ ~-0.5 ~ align xyz positioned ~.5 ~.5 ~.5 run function expansion:blocks/oxygenator/oxygenate/fill_space/add_marker
scoreboard players reset #temp exp.bool

# Tag all the entities which are currently connected
execute on passengers if entity @s[tag=exp.oxygen_link] on origin run tag @s add exp.getting_oxygen

# start the animated block texture
execute if entity @s[tag=!exp.pressurized] run function expansion:blocks/oxygenator/gui/animated_texture/start
