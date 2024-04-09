tag @s add exp.deflected_rocket
execute as @e[type=interaction,tag=exp.homing_rocket_lcdet,nbt={attack:{}},limit=1,sort=nearest] on vehicle run function expansion:vehicles/mech/actions/righthand/rocket/deflect/deflect
tag @s remove exp.deflected_rocket
advancement revoke @s only expansion:utility/deflect_rocket