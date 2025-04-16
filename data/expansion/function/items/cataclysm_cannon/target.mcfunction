scoreboard players set #temp exp.max_range 20
scoreboard players set #temp exp.cooldown 2

execute summon marker run function expansion:utilities/raycast/target/loop

scoreboard players reset #temp exp.cooldown
scoreboard players reset #temp exp.max_range