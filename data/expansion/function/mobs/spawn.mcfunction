# otherwise, spawn mobs
execute if entity @s[tag=exp.evil_drone_spawner] run function expansion:mobs/evil_drone/summon/from_spawner

execute if entity @s[tag=exp.san_holo_spawner] run function expansion:mobs/space_trader/summon/from_spawner

kill @s