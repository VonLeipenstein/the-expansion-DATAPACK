# summon drone
summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["exp.pet_drone","exp.mob","exp.new_drone"],CustomName:'{"text":"Scanner Drone"}',Passengers:[{id:"minecraft:interaction",Tags:["exp.pet_drone_rcdet"],response:1b,width:0.5f,height:0.5f}]}
tag @s add exp.has_active_drone

# give the drone the same id as the player
scoreboard players operation @e[type=minecraft:armor_stand,tag=exp.new_drone,limit=1,sort=nearest] exp.unique_id = @s exp.unique_id

# copy model to drone
execute positioned ~ ~1 ~ run item replace entity @e[type=minecraft:armor_stand,tag=exp.new_drone,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air

# sound
playsound expansion:drone.error neutral @a ~ ~ ~

# remove new score
tag @e[type=minecraft:armor_stand,tag=exp.new_drone,limit=1,sort=nearest] remove exp.new_drone