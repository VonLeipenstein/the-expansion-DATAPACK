execute if block ~ ~ ~ minecraft:dropper unless items block ~ ~ ~ container.0 * unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/gui/buttons/display_air_button
execute if block ~ ~ ~ minecraft:dropper unless items block ~ ~ ~ container.1 * unless entity @e[type=minecraft:armor_stand,tag=exp.oxygenator,tag=exp.scanning,distance=0.5..40,limit=1] run function expansion:blocks/oxygenator/gui/buttons/activate_button
execute if block ~ ~ ~ minecraft:dropper unless items block ~ ~ ~ container.2 * run function expansion:blocks/oxygenator/gui/buttons/display_sphere_button

function expansion:blocks/oxygenator/gui/main