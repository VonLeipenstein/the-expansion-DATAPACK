# assign a pilot tag to the first player who enters
tag @p[tag=exp.clicked_ship] add exp.spaceship_pilot

# convert the model from the item display to the armor stand
execute on passengers run item replace entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] armor.head from entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] container.0
execute on passengers run item replace entity @s[type=minecraft:item_display,tag=exp.spaceship_display] container.0 with air

# make the player ride the armor stand
execute on passengers store result entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] Rotation[0] float 1 on vehicle run data get entity @s Rotation[0]

# change the model to the flying version of the spaceship
execute on passengers if entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] run function expansion:vehicles/spaceship/model_switching/decrease_model

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
execute on passengers if data entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.fuel.tag.value on vehicle store result score @s exp.value on passengers if entity @s[type=armor_stand] run data get entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.fuel.tag.value
scoreboard players set @s exp.delay 10
execute on passengers if data entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.speed.tag.value on vehicle store result score @s exp.delay on passengers if entity @s[type=armor_stand] run data get entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.speed.tag.value
scoreboard players set @s exp.unique_id 0
execute on passengers if data entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.blaster.tag.id on vehicle store result score @s exp.unique_id on passengers if entity @s[type=armor_stand] run data get entity @s[type=minecraft:armor_stand,tag=exp.spaceship_display] ArmorItems[3].tag.ModStorage.blaster.tag.id

