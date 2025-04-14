# show titles
data merge storage expansion:temp {actionbar:{oxygen:[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.oxygen_percent"}},{text:"%▶"}],integrity:[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.suit_integrity"}},{text:"%▶"}]}}

# change the color of the oxygen percentage and indicate a missing tank
execute if score @s exp.oxygen_percent matches 21..49 run data modify storage expansion:temp actionbar.oxygen[0].color set value "gold"
execute if score @s exp.oxygen_percent matches 11..20 run data modify storage expansion:temp actionbar.oxygen[0].color set value "red"
execute if score @s exp.oxygen_percent matches 0..10 run data modify storage expansion:temp actionbar.oxygen[0].color set value "dark_red"
execute unless score @s exp.oxygen_max matches 1.. run data modify storage expansion:temp actionbar.oxygen set value {text:"Tank Missing",color:"red"}

# change the color of the suit integrity percentage and indicate some suit states
execute if score @s exp.suit_integrity matches 21..49 run data modify storage expansion:temp actionbar.integrity[0].color set value "gold"
execute if score @s exp.suit_integrity matches 11..20 run data modify storage expansion:temp actionbar.integrity[0].color set value "red"
execute if score @s exp.suit_integrity matches 0..10 run data modify storage expansion:temp actionbar.integrity[0].color set value "dark_red"
execute if score @s exp.suit_integrity matches -1 run data modify storage expansion:temp actionbar.integrity set value {text:"Incomplete",color:"red"}
execute if score #temp exp.counter_2 matches 1.. run data modify storage expansion:temp actionbar.integrity[0] set value {text:"Compromised ◀",color:"red"}
scoreboard players reset #temp exp.counter_2

# display the title
title @s actionbar [{translate:"exp_screentxt_oxygen_level"},{storage:"expansion:temp",nbt: "actionbar.oxygen", interpret: true, bold: true},{text:"    "},{text:"Suit Integrity: "},{storage:"expansion:temp",nbt: "actionbar.integrity", interpret: true, bold: true}]