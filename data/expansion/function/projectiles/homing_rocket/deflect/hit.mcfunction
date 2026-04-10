# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/deflect/hit
# Total callers: 0
# None found
# <<< generated function callers <<<

tag @s add exp.deflected_rocket
execute rotated as @s as @e[type=interaction,tag=exp.homing_rocket_lcdet,nbt={attack:{}},distance=..5,limit=1,sort=nearest] on vehicle run function expansion:projectiles/homing_rocket/deflect/deflect
tag @s remove exp.deflected_rocket
advancement revoke @s only expansion:utility/deflect_rocket