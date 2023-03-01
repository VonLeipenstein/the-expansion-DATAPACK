# summon an item_display entity and copy the spaceship item from the display armor stand. kill the display armor stand for the next steps
summon item_display ~ ~ ~ {Tags:["exp.spaceship_display","smithed.block"],item_display:"head"}
item replace entity @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] container.0 from entity @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head
data merge entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] {transformation:{translation:[0.0f,2.0f,0.0f],scale:[0.7f,0.7f,0.7f]}}
kill @e[type=armor_stand,tag=exp.spaceship_display,limit=1,sort=nearest]

# summon the interaction ennity
execute at @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] run summon interaction ~ ~ ~ {Tags:["exp.spaceship_rcdet","smithed.block"],width:2f,height:2f,response:1b}

# make the item display ride the spaceship and the interaction entity ride the item display
ride @e[type=item_display,tag=exp.spaceship_display,distance=..1,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest]
ride @e[type=interaction,tag=exp.spaceship_rcdet,distance=..1,limit=1,sort=nearest] mount @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest]

# synchronize the rotation of the display with the spaceship armor stand
data modify entity @e[type=minecraft:item_display,tag=exp.spaceship_display,limit=1,sort=nearest] Rotation[0] set from entity @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] Rotation[0]

# change the model to the landed version
execute as @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] run function expansion:vehicles/spaceship/model_switching/increase_model

# teleport the player next to the spaceship
execute as @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] at @s rotated ~ 0 run tp @p[tag=!exp.ejected,tag=exp.inside_spaceship] ^-2 ^ ^1 ~ ~

# reset the speed
scoreboard players set @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.speed 10

# make the spaceship float when exiting in zero gravity
execute if predicate expansion:dimension/zero_gravity run data merge entity @e[type=armor_stand,tag=exp.spaceship,limit=1,sort=nearest] {NoGravity:1b}

# remove basic player effects
function expansion:vehicles/spaceship/exits/remove_effects