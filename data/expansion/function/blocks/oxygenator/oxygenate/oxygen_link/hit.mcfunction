# create a link to this oxygenator if I didn't have one
execute unless entity @s[tag=exp.oxygenated] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/prepare

# if the base is pressurized and the player doesnt have oxygen, give the player oxygen instantly
execute if score #temp exp.oxygen_max matches 1 unless entity @s[tag=exp.inside_habitable_space] run function expansion:blocks/oxygenator/oxygenate/give_oxygen

# add a tag so this player wont get oxygenated again during this scan
# also used to detect if players were hit by the wave
tag @s add exp.recieved_oxygen
say hit