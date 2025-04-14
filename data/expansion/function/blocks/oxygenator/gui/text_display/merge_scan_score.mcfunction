execute store result score @s exp.hold_value on vehicle run scoreboard players get @s exp.hold_value

data merge entity @s {text:[{text:"\nScans:\n",color: "green"},{score:{name:"@s",objective:"exp.hold_value"}},"/100\n\n"]}