kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":'{color:"dark_gray","translate":"exp_blocks_terraformer_name"}'}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/terraformer

execute on passengers if entity @s[tag=exp.origin_link] run function expansion:blocks/terraformer/unlink

execute on passengers run kill @s

kill @s
 