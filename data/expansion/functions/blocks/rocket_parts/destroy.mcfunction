execute if entity @s[tag=exp.rocket_bottom] as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:items/rocket_parts/rocket_bottom
execute if entity @s[tag=exp.rocket_cockpit] as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:items/rocket_parts/rocket_cockpit
execute if entity @s[tag=exp.rocket_top] as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:items/rocket_parts/rocket_top
playsound expansion:wrench.create block @a ~ ~ ~

fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
kill @s