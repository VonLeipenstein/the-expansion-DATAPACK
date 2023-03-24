# add tags to the player to be able to detect if they are inside the spaceship, 
tag @p add exp.inside_spaceship
tag @p add exp.inside_vehicle

# remove tags from the player. rising and falling regulate the zero gravity environment
tag @p remove exp.rising
tag @p remove exp.falling

# dismiss the pet drone if it was active
execute if entity @s[tag=exp.has_active_drone] run function expansion:items/drone_pet/dismiss

# align the rotation of the player with the spaceship
execute rotated as @s run tp @p ^ ^ ^ ~ ~

# make the entity stack
execute on passengers on passengers run kill @s
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["exp.spaceship_display"]}
item replace entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head from entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] container.0
execute on passengers run kill @s
ride @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] mount @s
data modify entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] Rotation set from entity @s Rotation
ride @p mount @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# change the model to the flying version of the spaceship
execute on passengers run function expansion:vehicles/spaceship/model_switching/decrease_model

# calculate the fuel percentage so the actionbar can show up
function expansion:utilities/fuel_percentage

# remove nogravity from leaving in space
data merge entity @s {NoGravity:0b}

# reset the motion storage in this function in case it corrupts for some weird reason. 
data merge storage expansion:motion {Motion:[0.0d,0.0d,0.0d]}

# tags to regulate the mod station
tag @s add exp.player_inside
tag @s remove exp.mod_ship

# merge any upgrade values with the spaceship
scoreboard players set @s exp.value 50
execute on passengers if data entity @s ArmorItems[3].tag.ModStorage.fuel.tag.value on vehicle store result score @s exp.value on passengers run data get entity @s ArmorItems[3].tag.ModStorage.fuel.tag.value

scoreboard players set @s exp.delay 10
execute on passengers if data entity @s ArmorItems[3].tag.ModStorage.speed.tag.value on vehicle store result score @s exp.delay on passengers run data get entity @s ArmorItems[3].tag.ModStorage.speed.tag.value

scoreboard players set @s exp.unique_id 0
execute on passengers if data entity @s ArmorItems[3].tag.ModStorage.blaster.tag.id on vehicle store result score @s exp.unique_id on passengers run data get entity @s ArmorItems[3].tag.ModStorage.blaster.tag.id

# give the player the blaster trigger item, but only if they have no item in their offhand to prevent it from being replaced
execute unless entity @p[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @p weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Fire!","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012006,ship_blaster:1b,exp_tool:1b,expansion_coas:1b} 1