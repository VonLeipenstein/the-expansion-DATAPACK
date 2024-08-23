# merge the mod array with the spaceship
data modify entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage merge from entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] ArmorItems[3].components.minecraft:custom_data.ModStorage

# set tags and stuff
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.righthand.components.minecraft:custom_data.sword run function expansion:vehicles/mech/actions/righthand/equip/sword
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.righthand.components.minecraft:custom_data.blaster run function expansion:vehicles/mech/actions/righthand/equip/blaster
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.righthand.components.minecraft:custom_data.rocket run function expansion:vehicles/mech/actions/righthand/equip/rocket
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.righthand.components.minecraft:custom_data.drill run function expansion:vehicles/mech/actions/righthand/equip/drill

execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.lefthand.components.minecraft:custom_data.sword run function expansion:vehicles/mech/actions/lefthand/equip/sword
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.lefthand.components.minecraft:custom_data.blaster run function expansion:vehicles/mech/actions/lefthand/equip/blaster
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.lefthand.components.minecraft:custom_data.rocket run function expansion:vehicles/mech/actions/lefthand/equip/rocket
execute if data entity @s ArmorItems[3].components.minecraft:custom_data.ModStorage.lefthand.components.minecraft:custom_data.drill run function expansion:vehicles/mech/actions/lefthand/equip/drill

# remove tag
tag @s remove exp.being_modified