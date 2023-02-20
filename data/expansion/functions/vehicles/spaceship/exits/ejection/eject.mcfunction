execute on passengers run tag @s add exp.eject_chair
execute on passengers run tag @s remove exp.spaceship_display
execute on passengers on passengers run tag @s add exp.ejected

summon armor_stand ~ ~ ~ {Tags:["exp.spaceship_display","exp.has_ejected"],Marker:1b,Invisible:1b}
item replace entity @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] armor.head from entity @e[type=armor_stand,tag=exp.eject_chair,limit=1,sort=nearest] armor.head
item replace entity @e[type=armor_stand,tag=exp.eject_chair,limit=1,sort=nearest] armor.head with minecraft:air

ride @e[type=armor_stand,tag=exp.eject_chair,tag=!exp.spaceship_ejected,limit=1,sort=nearest] dismount
ride @e[type=item_display,tag=exp.spaceship_display,limit=1,sort=nearest] mount @s

data merge entity @e[type=armor_stand,tag=exp.eject_chair,limit=1,sort=nearest] {Motion:[0.5,5.0,0.5],Marker:0b,Invisible:1b,Small:1b}

scoreboard players reset @s exp.timer_2


