execute if entity @s[tag=!exp.module_top] on attacker unless entity @s[gamemode=creative] run loot give @s loot expansion:vehicles/lunar_module
execute if entity @s[tag=exp.module_top] on attacker unless entity @s[gamemode=creative] run loot give @s loot expansion:vehicles/module_top

playsound block.metal.break block @a ~ ~ ~
execute at @s positioned ~ ~3 ~ run kill @e[type=minecraft:interaction,tag=exp.module_interactor,distance=..5,limit=1,sort=nearest]

execute on vehicle run function expansion:vehicles/lunar_module/delete
