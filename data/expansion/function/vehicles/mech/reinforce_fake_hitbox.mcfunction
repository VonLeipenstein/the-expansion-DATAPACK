# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/reinforce_fake_hitbox
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/drive (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# prevent the mech from clipping inside walls
execute unless block ^ ^2.5 ^.9 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^2.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^.6 #expansion:air run function expansion:vehicles/mech/propulsion/collision
execute unless block ^ ^3.5 ^-.7 #expansion:air rotated ~180 ~ run function expansion:vehicles/mech/propulsion/collision

# going uphill (forwards and backwards)
execute unless block ^.35 ^ ^.35 #expansion:air if block ^.35 ^1 ^.35 #expansion:air if block ^ ^1 ^0.05 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^-.35 ^ ^.35 #expansion:air if block ^-.35 ^1 ^.35 #expansion:air if block ^ ^1 ^0.05 #expansion:air run tp @s ^ ^1 ^0.05
execute unless block ^.35 ^ ^-.35 #expansion:air if block ^.35 ^1 ^-.35 #expansion:air if block ^ ^1 ^-0.05 #expansion:air run tp @s ^ ^1 ^-0.05
execute unless block ^-.35 ^ ^-.35 #expansion:air if block ^-.35 ^1 ^-.35 #expansion:air if block ^ ^1 ^-0.05 #expansion:air run tp @s ^ ^1 ^-0.05
