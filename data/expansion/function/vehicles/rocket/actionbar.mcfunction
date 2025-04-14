# calculate the fuel percentage
function expansion:utilities/fuel_percentage

# calculate the altitude
execute at @s store result score @s exp.y run function expansion:utilities/altitude/cast

# prepare the actionbar text in storage
data merge storage expansion:temp {actionbar:{position:[[{text:"◀",color:"aqua"}],[{score:{name:"@s",objective:"exp.y"}}],[{text:"▶"}]],fuel:[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.fuel_percentage"}},{text:"%▶"}]}}

# change the color of the oxygen percentage and indicate a missing tank
execute if score @s exp.fuel_percentage matches 10..49 run data modify storage expansion:temp actionbar.fuel[0].color set value "gold"
execute if score @s exp.fuel_percentage matches 0..9 run data modify storage expansion:temp actionbar.fuel[0].color set value "red"

# display the title
title @p[tag=exp.inside_rocket] actionbar [{text:"Altitude: "},{storage:"expansion:temp",nbt: "actionbar.position", interpret: true, bold: true},{text:"    "},{translate:"exp_screentxt_fuel_actionbar"},{storage:"expansion:temp",nbt: "actionbar.fuel", interpret: true, bold: true}]