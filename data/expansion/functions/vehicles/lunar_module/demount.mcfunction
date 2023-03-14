execute as @p unless entity @s[gamemode=creative] if entity @s[tag=!exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/lunar_module
execute as @p unless entity @s[gamemode=creative] if entity @s[tag=exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/module_top

playsound block.metal.break block @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s
