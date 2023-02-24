execute if entity @s[tag=!exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/lunar_module
execute if entity @s[tag=exp.module_top] run loot spawn ~ ~ ~ loot expansion:vehicles/module_top
playsound expansion:wrench.create block @a ~ ~ ~
execute positioned ~ ~1 ~ as @p at @s run tp @s ~ ~0.001 ~
kill @e[type=item_display,tag=exp.module_display,limit=1,sort=nearest]
kill @e[type=interaction,tag=exp.module_interactor,limit=2,sort=nearest]
kill @s
