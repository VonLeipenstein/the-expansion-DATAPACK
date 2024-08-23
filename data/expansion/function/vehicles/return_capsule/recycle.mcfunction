loot spawn ~ ~1.65 ~ loot expansion:vehicles/return_capsule_recycle
advancement grant @p only expansion:progression/recycle_capsule
playsound expansion:wrench.create block @a ~ ~ ~
execute on passengers run kill @s
kill @s