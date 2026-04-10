# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/add_target
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/ready (1 caller) [OK same-folder]
# - function expansion:projectiles/electric_arc/ready (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# apply the cooldown
scoreboard players set @s exp.cooldown 20

# cast a zap
execute at @s positioned ~ ~1 ~ facing ~ ~1 ~ run function expansion:blocks/tesla_coil/coil/zap

# sound
function expansion:projectiles/electric_arc/sound