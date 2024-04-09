particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode ambient @a ~ ~ ~

execute as @e[tag=exp.rocket_target_fake,predicate=expansion:compare_score/unique_id,limit=1] run function expansion:utilities/erase_entity

execute as @e[type=!#expansion:ignore,distance=..5] run damage @s 12 explosion
execute on passengers run kill @s
kill @s