tag @s add exp.done_modifying
execute as @e[type=armor_stand,tag=exp.being_modified,distance=..50,limit=1,sort=nearest] on passengers run data modify entity @s item.tag.CustomModelData set from entity @e[type=armor_stand,tag=exp.modstation,tag=exp.done_modifying,limit=1,sort=nearest] ArmorItems[3].tag.UpgradeStorage.skin.CustomModelData

tag @s remove exp.done_modifying
tag @s remove exp.modifying_ship
tag @e[type=armor_stand,tag=exp.being_modified,distance=..0.5,limit=1,sort=nearest] remove exp.being_modified
