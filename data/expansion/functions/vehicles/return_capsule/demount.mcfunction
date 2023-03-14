execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~1.7 ~ loot expansion:vehicles/return_capsule
playsound block.metal.break block @a ~ ~ ~
execute on passengers run kill @s
kill @s