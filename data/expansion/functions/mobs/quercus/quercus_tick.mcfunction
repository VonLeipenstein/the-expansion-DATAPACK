#execute as @s[nbt={HurtTime:9s}] run say ouch
data modify entity @e[type=armor_stand,tag=exp.quercus_mob_body,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
execute unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] as @e[type=armor_stand,tag=exp.quercus_mob_body,limit=1,sort=nearest] run function expansion:mobs/quercus/animate_walking
execute if entity @s[nbt={Motion:[0.0,0.0,0.0]}] as @e[type=armor_stand,tag=exp.quercus_mob_body,limit=1,sort=nearest] unless entity @s[nbt={ArmorItems:[{},{},{},{tag:{CustomModelData:125001}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 125001

