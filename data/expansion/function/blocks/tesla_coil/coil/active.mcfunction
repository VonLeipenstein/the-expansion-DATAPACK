# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/active
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/main (1 caller) [OK above +1]
# <<< generated function callers <<<

# initiate shooting an entity
execute unless score @s exp.cooldown matches 1.. run function expansion:blocks/tesla_coil/coil/ready

# stop the coil
execute if block ~ ~1 ~ minecraft:redstone_torch[lit=true] run function expansion:blocks/tesla_coil/coil/stop

# remove cooldown
scoreboard players remove @s[scores={exp.cooldown=1..}] exp.cooldown 1