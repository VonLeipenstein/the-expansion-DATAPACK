tag @s add exp.inside_rocket
tag @s add exp.inside_vehicle

# swap the rightclick villager with the rocket_seat armor stand and mount the player on top of that
kill @e[type=interaction,tag=exp.rocket_rcdet,limit=1,sort=nearest]
execute at @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["exp.rocket_seat"]}
ride @e[type=armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest]
ride @s mount @e[type=armor_stand,tag=exp.rocket_seat,limit=1,sort=nearest]

# delete the villager
kill @e[type=interaction,tag=exp.rocket_rcdet,limit=1,sort=nearest]

# revoke the rightclick advancement
advancement revoke @s only expansion:utility/rocket_rc