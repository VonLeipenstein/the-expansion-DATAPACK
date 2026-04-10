# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actionbar
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/inside (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players operation #input exp.math = @s exp.health
scoreboard players operation #max exp.math = @s exp.max_health
function expansion:utilities/percentage
scoreboard players operation #temp exp.percentage = #output exp.percentage

scoreboard players operation #input exp.math = @s exp.fuel_level
scoreboard players operation #max exp.math = @s exp.fuel_max
function expansion:utilities/percentage

execute on passengers if entity @s[tag=aj.mech_torso.root] on passengers if entity @s[tag=aj.mech_torso.text_display.health] run data merge entity @s {transformation:{scale:[0.13f,0.13f,0.13f]},text:[{text:"",color:"#00ffff"},{color:"green",bold: true,text:" Health\n "},{score:{name:"#temp",objective:"exp.percentage"}},"%\n\n",{color:"#00ffff",bold: true,text:" Jetpack Fuel\n "},{color:"#00ffff",score:{name:"#output",objective:"exp.percentage"}},"%\n"]}

#get arm ammo
execute store result score #temp exp.ammo on passengers if entity @s[tag=exp.left_arm_control] run scoreboard players get @s exp.ammo
execute store result score #temp exp.max_ammo on passengers if entity @s[tag=exp.left_arm_control] run scoreboard players get @s exp.max_ammo

#execute store result score #temp exp.ammo on passengers if entity @s[tag=exp.mech_seat] on passengers run clear @s poppy 0
execute on passengers if entity @s[tag=aj.mech_torso.root] on passengers if entity @s[tag=aj.mech_torso.text_display.ammo_left] run data merge entity @s {transformation:{scale:[0.14f,0.14f,0.14f]},text:[{text:"",color:"#00ffff"},{color:"red",bold: true,text:" Ammo\n "},{color:"#00ffff",score:{name:"#temp",objective:"exp.ammo"}},"/",{color:"#00ffff",score:{name:"#temp",objective:"exp.max_ammo"}},"\n\n\n\n\n"]}

#right
execute store result score #temp exp.ammo on passengers if entity @s[tag=exp.right_arm_control] run scoreboard players get @s exp.ammo
execute store result score #temp exp.max_ammo on passengers if entity @s[tag=exp.right_arm_control] run scoreboard players get @s exp.max_ammo
execute on passengers if entity @s[tag=aj.mech_torso.root] on passengers if entity @s[tag=aj.mech_torso.text_display.ammo_right] run data merge entity @s {transformation:{scale:[0.14f,0.14f,0.14f]},text:[{text:"",color:"#00ffff"},{color:"red",bold: true,text:" Ammo\n "},{color:"#00ffff",score:{name:"#temp",objective:"exp.ammo"}},"/",{color:"#00ffff",score:{name:"#temp",objective:"exp.max_ammo"}},"\n\n\n\n\n"]}