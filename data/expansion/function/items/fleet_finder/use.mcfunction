# >>> generated function callers >>>
# Callers for expansion:items/fleet_finder/use
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# - function expansion:vehicles/spaceship/click_detection/rightclick (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# locate the jupiter fleet
execute store result score #temp exp.distance run locate structure #expansion:jupiter_fleet

# radar sound
playsound expansion:fleet_finder.ping player @a ~ ~ ~ 0.5

# If the jupiter fleet is within range
execute if score #temp exp.distance <= #256 exp.const if predicate expansion:dimension/jupiter unless score #temp exp.distance matches 0 run tellraw @s ["",{text:"Fleet located! Current distance: ", color:"aqua"},{score:{name:"#temp",objective:"exp.distance"}, bold:true, color:"aqua"},{text:" blocks", color:"aqua"}]

# If the jupiter fleet is out of range
execute if score #temp exp.distance > #256 exp.const run tellraw @s [{text:"Fleet detected! Coordinates out of bounds... Approach the Fleet for more information...", color:"aqua"}]

# If the jupiter fleet is not found at all
execute if score #temp exp.distance matches 0 unless predicate expansion:dimension/jupiter run tellraw @s [{text:"Unable to locate the Fleet", color:"aqua"}]

scoreboard players reset #temp exp.distance