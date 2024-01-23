execute if entity @s[tag=exp.mech.tick.combo] run function expansion:vehicles/mech/actions/combo/main

execute if entity @s[tag=exp.mech.tick.left] run function expansion:vehicles/mech/actions/lefthand/main

execute if entity @s[tag=exp.mech.tick.right] run function expansion:vehicles/mech/actions/righthand/main

execute if score @s exp.cooldown matches 1 run function expansion:vehicles/mech/actions/finish

scoreboard players remove @s exp.cooldown 1

