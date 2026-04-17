# >>> generated function callers >>>
# Callers for expansion:projectiles/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:tick (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if entity @s[tag=exp.electric_arc] run return run function expansion:projectiles/electric_arc/loop

execute if entity @s[tag=exp.ship_blaster] run return run function expansion:projectiles/ship_blaster/loop

execute if entity @s[tag=exp.railgun_bullet] run return run function expansion:projectiles/railgun_bullet/loop

execute if entity @s[tag=exp.freeze_ray] run return run function expansion:projectiles/freeze_ray/loop

execute if entity @s[tag=exp.drone_laser] run return run function expansion:projectiles/drone_laser/loop

execute if entity @s[tag=exp.homing_rocket] run return run function expansion:projectiles/homing_rocket/loop

execute if entity @s[tag=exp.autocannon_bullet] run return run function expansion:projectiles/autocannon_bullet/loop

execute if entity @s[tag=exp.cataclysm] run return run function expansion:projectiles/cataclysm/loop

execute if entity @s[tag=exp.spiral] run return run function expansion:projectiles/spiral/loop

# not really a slowcaster but it was the most applicable here: Rocket segments after an explosion
execute if entity @s[tag=exp.rocket_segment] run return run function expansion:vehicles/rocket_segment/explode/trail