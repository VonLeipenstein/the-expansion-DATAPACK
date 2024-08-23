execute store result score @s exp.distance run locate structure #expansion:jupiter_fleet
scoreboard players set @s exp.max_range 256
execute if score @s exp.distance <= @s exp.max_range if predicate expansion:dimension/jupiter unless score @s exp.distance matches 0 run tellraw @s ["",{"text":"Jupiter Fleet located! Current distance: ", "color":"aqua"},{"score":{"name":"@s","objective":"exp.distance"}, "bold":true, "color":"aqua"},{"text":" blocks", "color":"aqua"}]

execute if score @s exp.distance > @s exp.max_range run tellraw @s [{"text":"Jupiter Fleet detected! Coordinates out of bounds... Approach the Fleet for more information...", "color":"aqua"}]

execute if score @s exp.distance matches 0 unless predicate expansion:dimension/jupiter run tellraw @s [{"text":"Unable to locate the Jupiter Fleet", "color":"aqua"}]

playsound expansion:fleet_finder.ping player @a ~ ~ ~ 0.5