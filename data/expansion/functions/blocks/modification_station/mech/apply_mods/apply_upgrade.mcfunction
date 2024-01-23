# merge the mod array with the spaceship
data modify entity @s ArmorItems[3].tag.ModStorage merge from entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] ArmorItems[3].tag.ModStorage

# set tags and stuff
execute if data entity @s ArmorItems[3].tag.ModStorage.righthand.tag.sword run function expansion:vehicles/mech/actions/righthand/equip/sword
execute if data entity @s ArmorItems[3].tag.ModStorage.righthand.tag.blaster run function expansion:vehicles/mech/actions/righthand/equip/blaster

execute if data entity @s ArmorItems[3].tag.ModStorage.lefthand.tag.sword run function expansion:vehicles/mech/actions/lefthand/equip/sword
execute if data entity @s ArmorItems[3].tag.ModStorage.lefthand.tag.blaster run function expansion:vehicles/mech/actions/lefthand/equip/blaster

# remove tag
tag @s remove exp.being_modified