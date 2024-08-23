setblock ~ ~1 ~ minecraft:redstone_torch keep
execute positioned ~ ~1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..2,limit=1,sort=nearest]
 