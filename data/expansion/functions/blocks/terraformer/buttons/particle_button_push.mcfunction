scoreboard players add @s exp.counter_2 1
execute if score @s exp.counter_2 matches 2 run scoreboard players set @s exp.counter_2 0
item replace block ~ ~ ~ container.8 with minecraft:air
playsound expansion:gui.button_click block @p