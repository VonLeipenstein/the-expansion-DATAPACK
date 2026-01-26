# kill the beacon upon arrival
scoreboard players operation #search exp.pad_id = @s exp.pad_id
execute if entity @s[tag=exp.delivering] as @e[type=minecraft:item_display,tag=exp.cargo_beacon,predicate=expansion:compare_score/pad_id,limit=1] at @p run loot spawn ~ ~ ~ loot expansion:slot/contents
execute if entity @s[tag=exp.delivering] run kill @e[type=minecraft:item_display,tag=exp.cargo_beacon,predicate=expansion:compare_score/pad_id,limit=1]

# mount the launch pad upon return
execute if entity @s[tag=exp.returning] run ride @s mount @e[type=minecraft:item_display,tag=exp.cargo_rocket_pad,predicate=expansion:compare_score/pad_id,distance=..1,limit=1]

# time the rocket stays when delivering
execute if entity @s[tag=exp.delivering] run scoreboard players set @s exp.timer_2 100

execute if entity @s[tag=exp.delivering] run tag @s add exp.waiting
tag @s remove exp.delivering
tag @s remove exp.returning
tag @s remove exp.landing
