# set the score of the display equal to the score of the ship
execute store result score @s exp.unique_id on vehicle run scoreboard players get @s exp.unique_id

# merge the mod array with the spaceship
data modify entity @s item.tag.ModStorage merge from entity @e[type=minecraft:armor_stand,tag=exp.modstation,predicate=expansion:compare_score/modstation,limit=1] ArmorItems[3].tag.ModStorage

# apply the spaceship cmd to both the spaceship and the display item
data modify entity @s item.tag.CustomModelData set from entity @s item.tag.ModStorage.skin.tag.CustomModelData

# remove the data of the temporary data storage
data remove entity @e[type=minecraft:armor_stand,tag=exp.modstation,tag=exp.done_modifying,predicate=expansion:compare_score/modstation,limit=1] ArmorItems[3].tag.ModStorage

# remove tag
execute on vehicle run tag @s remove exp.being_modified
scoreboard players reset @s exp.unique_id


