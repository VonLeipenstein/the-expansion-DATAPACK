execute if entity @s[tag=exp.rocket_bottom] as @p unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_parts/rocket_bottom
execute if entity @s[tag=exp.rocket_cockpit] as @p unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_parts/rocket_cockpit
execute if entity @s[tag=exp.rocket_top] as @p unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_parts/rocket_top

execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
execute at @s run kill @e[type=minecraft:interaction,tag=exp.rocketpart_rcdet,distance=..1,limit=1,sort=arbitrary]
kill @s