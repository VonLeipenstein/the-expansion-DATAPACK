tp @s ~ ~ ~ ~-0.0795 ~

execute positioned ^ ^2 ^2.4 as @e[type=minecraft:item_display,tag=exp.mini_venus,predicate=expansion:compare_score/unique_id,limit=1,sort=nearest] run function expansion:blocks/planetarium/displays/venus
