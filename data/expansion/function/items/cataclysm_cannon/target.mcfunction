# >>> generated function callers >>>
# Callers for expansion:items/cataclysm_cannon/target
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:projectiles/cataclysm/target_arc (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

scoreboard players set #temp exp.max_range 20
scoreboard players set #temp exp.cooldown 2

execute summon marker run function expansion:utilities/raycast/target/loop

scoreboard players reset #temp exp.cooldown
scoreboard players reset #temp exp.max_range