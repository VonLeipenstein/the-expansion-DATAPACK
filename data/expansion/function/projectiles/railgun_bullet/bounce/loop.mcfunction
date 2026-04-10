# >>> generated function callers >>>
# Callers for expansion:projectiles/railgun_bullet/bounce/loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:projectiles/railgun_bullet/bounce/loop (1 caller) [OK same-folder]
# - function expansion:projectiles/railgun_bullet/quickcast (1 caller) [OK above +1]
# <<< generated function callers <<<

# x plane
execute if function expansion:projectiles/railgun_bullet/bounce/check_x run function expansion:projectiles/railgun_bullet/bounce/xplane
# y plane
execute if function expansion:projectiles/railgun_bullet/bounce/check_y run function expansion:projectiles/railgun_bullet/bounce/yplane
# z plane
execute if function expansion:projectiles/railgun_bullet/bounce/check_z run function expansion:projectiles/railgun_bullet/bounce/zplane

scoreboard players remove #temp2 exp.speed 1

particle flame ~ ~ ~ 0 0 0 0 1 force

# repeat
execute if score #temp2 exp.speed matches 1.. if block ^ ^ ^0.1 #expansion:air rotated as @s positioned ^ ^ ^0.1 run function expansion:projectiles/railgun_bullet/bounce/loop