# >>> generated function callers >>>
# Callers for expansion:spacesuits/oxygen/replenish_from_tank
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:spacesuits/oxygen/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# Note to self: This function doesn't run continuously because oxygen isn't removed continuously

# Get oxygen scores from armor
function expansion:spacesuits/oxygen/get_data
execute store result score #suit exp.oxygen_percent run function expansion:spacesuits/oxygen/get_data/init_loop
scoreboard players operation #suit exp.oxygen_lvl = #temp exp.oxygen_lvl
scoreboard players operation #suit exp.oxygen_max = #temp exp.oxygen_max

# Update player oxygen
scoreboard players operation #target exp.oxygen_lvl = @s exp.oxygen_lvl
scoreboard players operation #target exp.oxygen_max = @s exp.oxygen_max
scoreboard players operation #source exp.oxygen_lvl = #suit exp.oxygen_lvl
scoreboard players operation #source exp.oxygen_max = #suit exp.oxygen_max
execute store result score @s exp.oxygen_lvl run function expansion:mechanics/oxygen/refill_calculation

# Merge the new oxygen value back into the suit
scoreboard players operation #input exp.oxygen_lvl = #source exp.oxygen_lvl
scoreboard players operation #temp exp.oxygen_percent = @s exp.oxygen_percent
function expansion:spacesuits/oxygen/set_data/merge_oxygen

# Calculate the suits new percentage
scoreboard players operation #input exp.math = #suit exp.oxygen_lvl
scoreboard players operation #max exp.math = #suit exp.oxygen_max
execute store result score @s exp.oxygen_percent run function expansion:utilities/percentage

#tellraw @s [{text:"Tank: "},{score:{name:"#suit",objective:"exp.oxygen_lvl"}}]
#tellraw @s [{text:"Percent: "},{score:{name:"@s",objective:"exp.oxygen_percent"}}]