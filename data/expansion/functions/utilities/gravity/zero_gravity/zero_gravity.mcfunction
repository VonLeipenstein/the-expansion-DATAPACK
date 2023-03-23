# run movement functions if the player is wearing the space equipment
execute if entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:utilities/gravity/zero_gravity/movement

# apply exp.rising tag when jumping
tag @s[scores={exp.jump=1..},predicate=!expansion:nbt_checks/armor/magnetic_boots] add exp.rising

# apply levitation 255 when correct conditions are met
execute if entity @s[tag=!exp.rising,tag=!exp.falling,tag=!exp.spacewalking] run function expansion:utilities/gravity/zero_gravity/apply_levitation

# run no-friction simulations when rising or falling
execute if entity @s[tag=exp.rising] run function expansion:utilities/gravity/zero_gravity/rising
execute if entity @s[tag=exp.falling] run function expansion:utilities/gravity/zero_gravity/falling

tag @s remove exp.spacewalking
