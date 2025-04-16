## Merge your gravity with other nearby entities
scoreboard players operation #search exp.gravity_id = @s exp.gravity_id
execute as @e[type=!player,type=!#expansion:ignore_gravity,predicate=!expansion:compare_score/gravity_id,tag=!exp.origin_link,distance=..10,limit=1] run function expansion:mechanics/gravity/apply

# prevent gravity from being added if the player is immune to gravity effects
execute if entity @s[tag=exp.ignores_gravity_effects] run return run execute if score @s exp.gravity_id matches 1.. run function expansion:mechanics/gravity/remove_all

# apply planet specific gravity
function expansion:mechanics/gravity/apply