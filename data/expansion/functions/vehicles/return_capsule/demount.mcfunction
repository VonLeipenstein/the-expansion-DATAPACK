execute as @p unless entity @s[gamemode=creative] run loot give @s loot expansion:vehicles/return_capsule
execute at @s run playsound block.metal.break block @a ~ ~ ~
execute on passengers run kill @s
kill @s