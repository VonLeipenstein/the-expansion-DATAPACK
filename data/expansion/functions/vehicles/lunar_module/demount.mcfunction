execute if entity @s[tag=!exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/lunar_module
execute if entity @s[tag=exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/module_top
playsound expansion:wrench.create block @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
kill @s
execute as @e[type=villager,tag=exp.lunar_villager,limit=2,sort=nearest] run function expansion:utilities/erase_entity
