# title @p subtitle {"text":" "}
tag @s add exp.launching
data merge entity @s {NoGravity:0b}
kill @e[type=minecraft:interaction,tag=exp.rocket_villager,limit=2,sort=nearest]
# title @p subtitle {"text":"Do not leave the rocket from now on.","color":"gold","bold":true}
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:fire replace minecraft:air