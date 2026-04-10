# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/choose_target
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/ready (1 caller) [OK same-folder]
# - function expansion:projectiles/electric_arc/ready (1 caller) [WARN side/down 5]
# <<< generated function callers <<<

# select a target, prioritise active nearby tesla coils over entities
execute positioned ~ ~1 ~ as @e[type=minecraft:interaction,tag=exp.tesla_hitbox,tag=exp.active_coil,distance=1.1..10,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

execute positioned ~ ~1 ~ as @e[type=#expansion:turret_target,tag=!exp.zap_target,tag=!exp.tesla_hitbox,tag=!exp.ignore_for_damage,distance=1.1..10,limit=1,sort=random] run return run function expansion:utilities/raycast/target/lock_dummy

return fail