scoreboard players add @s exp.bool 1
execute if score @s exp.bool matches 2 run scoreboard players set @s exp.bool 0
item replace block ~ ~ ~ container.2 with minecraft:air
playsound expansion:gui.button_click block @p