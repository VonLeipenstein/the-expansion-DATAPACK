# >>> generated function callers >>>
# Callers for expansion:items/transporter/message
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:items/transporter/return/tp_player (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

# get the players x pos which is conceniently equal to the pocket space number
execute store result score #temp exp.unique_id run data get entity @s Pos[0] 0.001
# correct for floor rounding
scoreboard players operation #temp exp.unique_id += #1 exp.const

tellraw @s ["",{text:"Entered Pocket Space: ",color:"aqua"},{score:{name:"#temp",objective:"exp.unique_id"},bold:true}]
