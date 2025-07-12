# update the speed percentage when the speed changes
scoreboard players set #offset exp.math 10
scoreboard players operation #total exp.math = @s exp.speed_max
scoreboard players operation #total exp.math -= #offset exp.math
execute store result score #temp exp.speed run function expansion:vehicles/spaceship/propulsion/speed_percentage

# prepare the actionbar text in storage
data merge storage expansion:temp {actionbar:{position:[[{text:"◀",color:"white"},{score:{name:"@s",objective:"exp.x"}},{text:", "}],[{text:"",color:"white"},{score:{name:"@s",objective:"exp.y"}},{text:", "}],[{text:"",color:"white"},{score:{name:"@s",objective:"exp.z"}},{text:"▶"}]],speed:[{text:"◀",color:"green"},{score:{name:"#temp",objective:"exp.speed"}},{text:"%▶"}],fuel:[{text:"◀",color:"green"},{text:""},{score:{name:"@s",objective:"exp.fuel_percentage"}},{text:"%▶"}]}}

# change the color of the oxygen percentage and indicate a missing tank
execute if score @s exp.fuel_percentage matches 10..49 run data modify storage expansion:temp actionbar.fuel[0].color set value "gold"
execute if score @s exp.fuel_percentage matches 0..9 run data modify storage expansion:temp actionbar.fuel[0].color set value "red"
execute on passengers if entity @s[tag=exp.fuel_slot] unless items entity @s contents * run data modify storage expansion:temp actionbar.fuel set value {text:"◀Insert Fuel Cell▶",color:"red"}

# display the title
title @p[tag=exp.inside_spaceship] actionbar [{translate:"exp_screentxt_position_actionbar"},{storage:"expansion:temp",nbt:"actionbar.position",interpret:true,bold:true},{text:"    "},{translate:"exp_screentxt_speed_actionbar"},{storage:"expansion:temp",nbt: "actionbar.speed", interpret: true, bold: true},{text:"    "},{translate:"exp_screentxt_fuel_actionbar"},{storage:"expansion:temp",nbt: "actionbar.fuel", interpret: true, bold: true}]