execute as @p unless entity @s[gamemode=creative] if entity @s[tag=!exp.module_top] run loot give @s loot expansion:vehicles/lunar_module
execute as @p unless entity @s[gamemode=creative] if entity @s[tag=exp.module_top] run loot give @s loot expansion:vehicles/module_top

playsound block.metal.break block @a ~ ~ ~
execute positioned ~ ~3 ~ run kill @e[type=minecraft:interaction,tag=exp.module_interactor,limit=1,sort=nearest]
execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s
kill @s
