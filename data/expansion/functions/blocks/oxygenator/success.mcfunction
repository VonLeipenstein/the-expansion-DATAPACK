# finish the scan by killing all the armor stands and resetting the block counter
kill @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..20]
scoreboard players set @s exp.counter_1 0

# give the oxygenator a tag that it will keep until a scan fails. This is to give players that enter an already exp.pressurized base immediate access to oxygen
execute unless entity @s[tag=exp.pressurized] run function expansion:blocks/oxygenator/fill_space/first_scan_success

# check if players with the exp.has_oxygen tag are still inside and revoke their rights to oxygen if they dare to enter the cold emptyness of space without their space equipment
tag @e[type=#expansion:sentient,tag=!exp.inside_check,distance=..20] remove exp.has_oxygen
execute as @e[type=#expansion:sentient,tag=exp.inside_check,tag=!exp.has_oxygen,distance=..20] run function expansion:blocks/oxygenator/give_oxygen
tag @e[type=#expansion:sentient,tag=exp.inside_check,distance=..20] remove exp.inside_check

# prepare the oxygenator for another scan so the exp.scanning loops as long as it is successfull
tag @s add exp.initiate
tag @s add exp.scanning