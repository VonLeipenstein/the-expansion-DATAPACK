# >>> generated function callers >>>
# Callers for expansion:blocks/transporter/place/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/transporter/place/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

tag @s remove exp.transporter.new

item replace entity @s container.0 from entity @p[tag=exp.tick_player] weapon.mainhand

scoreboard players operation @s exp.unique_id = #temp exp.unique_id
execute on passengers if entity @s[type=text_display] run scoreboard players operation @s exp.unique_id = #temp exp.unique_id
execute unless score #temp exp.unique_id matches -1 on passengers if entity @s[type=text_display] run data merge entity @s {text:{color:"aqua",score:{name:"@s",objective:"exp.unique_id"}}}
scoreboard players reset #temp exp.unique_id

setblock ~ ~ ~ minecraft:barrier