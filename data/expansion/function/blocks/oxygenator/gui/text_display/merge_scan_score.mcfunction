# >>> generated function callers >>>
# Callers for expansion:blocks/oxygenator/gui/text_display/merge_scan_score
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/scan/perform (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

execute store result score @s exp.hold_value on vehicle run scoreboard players get @s exp.hold_value

data merge entity @s {text:[{text:"\nScans:\n",color: "green"},{score:{name:"@s",objective:"exp.hold_value"}},"/100\n\n"]}