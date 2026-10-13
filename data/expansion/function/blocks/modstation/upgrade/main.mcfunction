# >>> generated function callers >>>
# Callers for expansion:blocks/modstation/upgrade/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modstation/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# timer
scoreboard players remove @s exp.timer_1 1

# link the bots to the vehicle
execute if score @s exp.timer_1 matches 199 run function expansion:blocks/modstation/upgrade/link_bots

# move the bots towards the vehicle
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin at @s run function expansion:blocks/modstation/mod_robots/swarm_vehicle

# finish the upgrade 
execute if score @s exp.timer_1 matches 1 run function expansion:blocks/modstation/upgrade/finish