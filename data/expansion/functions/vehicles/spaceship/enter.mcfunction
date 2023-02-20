# add tags to the player to be able to detect if they are inside the spaceship, 
tag @s add exp.inside_spaceship
tag @s add exp.inside_vehicle

# remove tags from the player. rising and falling regulate the zero gravity environment
tag @s remove exp.rising
tag @s remove exp.falling

execute rotated as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] run tp @s ^ ^ ^ ~ ~

kill @e[type=interaction,tag=exp.spaceship_rcdet,limit=1,sort=nearest]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["exp.spaceship_display"]}
item replace entity @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head from entity @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] container.0
kill @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest]
ride @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
data modify entity @e[type=minecraft:armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] Rotation set from entity @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] Rotation
ride @s mount @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# change the model to the flying version of the spaceship
execute on vehicle run function expansion:vehicles/decrease_model

# give the player the blaster trigger item, but only if they have no item in their offhand to prevent it from being replaced
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Fire!","color":"white","bold":false,"italic":false,"underlined":false}'},Unbreakable:1b,CustomModelData:1012006,ship_blaster:1b} 1

data merge entity @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] {NoGravity:0b}

# copy the fuel level from the spaceship armor stand to the player
#scoreboard players operation @s exp.fuel_level = @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.fuel_level
#scoreboard players set @s exp.fuel_max 256
