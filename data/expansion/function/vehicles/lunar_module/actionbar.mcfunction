# >>> generated function callers >>>
# Callers for expansion:vehicles/lunar_module/actionbar
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/lunar_module/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

# calculate the altitude
execute at @s store result score #temp exp.y run function expansion:utilities/altitude/cast

# prepare the actionbar text in storage
data merge storage expansion:temp {actionbar:{position:[[{text:"◀",color:"aqua"}],[{score:{name:"#temp",objective:"exp.y"}}],[{text:"▶"}]]}}

# display the title
execute on passengers on passengers if entity @s[type=player] run title @s actionbar [{text:"Altitude: "},{storage:"expansion:temp",nbt: "actionbar.position", interpret: true, bold: true}]

# reset score
scoreboard players reset #temp exp.y