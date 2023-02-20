execute if score @s exp.counter_1 matches 0 run tag @e[type=armor_stand,tag=exp.compressor,tag=exp.has_oxygen,distance=..40] remove exp.has_oxygen
execute if score @s exp.counter_1 matches 1 positioned ~-24 ~-24 ~-24 run tag @e[type=armor_stand,tag=exp.compressor,tag=exp.has_oxygen,dx=47,dy=47,dz=47] remove exp.has_oxygen

scoreboard players add @s exp.counter_1 1
execute if score @s exp.counter_1 matches 2 run scoreboard players set @s exp.counter_1 0
item replace block ~ ~ ~ container.5 with minecraft:air
playsound expansion:gui.button_click block @p