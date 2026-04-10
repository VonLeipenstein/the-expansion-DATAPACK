# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# destroy the block when the barrel is destroyed
execute unless block ~ ~ ~ minecraft:barrel run function expansion:blocks/modification_station/destroy

# runs when a player is within 5 blocks
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/modification_station/player_nearby

# deselect the vehicle if none is found
execute if score @s exp.hold_value matches 1.. if predicate expansion:periodic/10 run function expansion:blocks/modification_station/select_vehicle/check

# during upgrading
execute if score @s exp.timer_1 matches 1.. run return run function expansion:blocks/modification_station/upgrade/main

# move the bots around the home block
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/mod_robots/idle